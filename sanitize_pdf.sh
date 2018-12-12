while getopts ":d:" opt; do
  case ${opt} in
    d )
       TARGET=$OPTARG
       ;;
    \? )
      echo "sanitize_pdf.sh [-d directory] pdf_file"
      exit 0
      ;;
    : )
       ;;
  esac
done
shift $((OPTIND -1))

docker run --name=gsa --rm -v ${TARGET:-~/gs}:/var/local/data gs2 /var/local/bin/sani.sh $1 251
