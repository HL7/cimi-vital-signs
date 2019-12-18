#!/usr/bin/env bash
curl -X POST  "https://us-central1-fhir-org-starter-project.cloudfunctions.net/ig-commit-trigger"\
  -H "Content-type: application/json"\
  --data '{"repository": {"full_name": "HL7/cimi-vital-signs"}}'