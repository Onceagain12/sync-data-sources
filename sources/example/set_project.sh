#!/bin/bash
if [ -z "$ES_URL" ]
then
  echo "$0: you must set ES_URL=... to run this script"
  exit 1
fi
if [ -z "$1" ]
then
  echo "$0: please specify index name as a 1st arg"
  exit 2
fi
if [ -z "$2" ]
then
  echo "$0: please specify project to set as a 2nd arg"
  exit 3
fi
if [ -z "$3" ]
then
  echo "$0: please specify origin where to set project as a 3rd arg"
  exit 3
fi
#curl -XPOST -H 'Content-Type: application/json' "${ES_URL}/${1}/_update_by_query?pretty" -d'{"script":{"inline":"ctx._source.project=\"${2}\""},"query":{"term":{"origin":"${3}"}}}'
curl -XPOST -H 'Content-Type: application/json' "${ES_URL}/${1}/_update_by_query?pretty" -d"{\"script\":{\"inline\":\"ctx._source.project=\\\"${2}\\\"\"},\"query\":{\"term\":{\"origin\":\"${3}\"}}}"
