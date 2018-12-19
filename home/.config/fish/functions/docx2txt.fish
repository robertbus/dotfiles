# https://stackoverflow.com/questions/5671988/how-to-extract-just-plain-text-from-doc-docx-files-unix#comment55058987_25620447
function docx2txt
  if test (count $argv) -ne 1
    echo 'usage: docx2txt word.docx'
  else if test ! -f $argv
    echo 'File not found:' $argv
  else
    unzip -p $argv word/document.xml | sed -e 's/<\/w:p>/\n/g; s/<[^>]\{1,\}>//g; s/[^[:print:]\n]\{1,\}//g'
  end
end
