{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "public-pool.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited (by the DNS naming spec).
If the release name already contains the chart name it will be used as the full name.
*/}}
{{- define "public-pool.fullname" -}}
{{- if .Values.fullnameOverride -}}
  {{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
  {{- $name := default .Chart.Name .Values.nameOverride -}}
  {{- if contains $name .Release.Name -}}
    {{- .Release.Name | trunc 63 | trimSuffix "-" -}}
  {{- else -}}
    {{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
  {{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "public-pool.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels used across all resources.
*/}}
{{- define "public-pool.labels" -}}
app.kubernetes.io/name: {{ include "public-pool.name" . }}
helm.sh/chart: {{ include "public-pool.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Create the name of the service account to use.
*/}}
{{- define "public-pool.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
  {{ default (include "public-pool.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
  {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Allow the release namespace to be overridden.
*/}}
{{- define "public-pool.namespace" -}}
  {{- if .Values.namespaceOverride -}}
    {{- .Values.namespaceOverride -}}
  {{- else -}}
    {{- .Release.Namespace -}}
  {{- end -}}
{{- end -}}

{{/*
Return the appropriate apiVersion for ingress.
*/}}
{{- define "public-pool.ingress.apiVersion" -}}
  {{- if and (.Capabilities.APIVersions.Has "networking.k8s.io/v1") (semverCompare ">= 1.19-0" .Capabilities.KubeVersion.Version) -}}
      networking.k8s.io/v1
  {{- else if .Capabilities.APIVersions.Has "networking.k8s.io/v1beta1" -}}
      networking.k8s.io/v1beta1
  {{- else -}}
      extensions/v1beta1
  {{- end -}}
{{- end -}}

{{/*
Return if ingress is stable.
*/}}
{{- define "public-pool.ingress.isStable" -}}
  {{- eq (include "public-pool.ingress.apiVersion" .) "networking.k8s.io/v1" -}}
{{- end -}}

{{/*
Return if ingress supports ingressClassName.
*/}}
{{- define "public-pool.ingress.supportsIngressClassName" -}}
  {{- or (include "public-pool.ingress.isStable" .) (and (eq (include "public-pool.ingress.apiVersion" .) "networking.k8s.io/v1beta1") (semverCompare ">= 1.18-0" .Capabilities.KubeVersion.Version)) -}}
{{- end -}}

{{/*
Return if ingress supports pathType.
*/}}
{{- define "public-pool.ingress.supportsPathType" -}}
  {{- or (include "public-pool.ingress.isStable" .) (and (eq (include "public-pool.ingress.apiVersion" .) "networking.k8s.io/v1beta1") (semverCompare ">= 1.18-0" .Capabilities.KubeVersion.Version)) -}}
{{- end -}}