function fcd () {
  dirdat="/var/tmp/dirs"
  suche=$1
  if [ -n "$suche" ]; then
    # Internal Field Separator wg. moegl. Leerzeichen in Verz.namen umbiegen
    IFSOLD=$IFS
    IFS=$(echo -en "\n\t");
    # erste Suche nach exakten Treffern
    dirs=$(grep -i -E \/$suche$ $dirdat)
    set -f; set -- $dirs; set +f; anz=$#
    # grosszuegiger suchen, wenn kein Ergebnis
    if [ $anz -eq 0 ]; then
      dirs=$(grep -i -E \/.*$suche[^/]*$ $dirdat)
      set -f; set -- $dirs; set +f; anz=$#
    fi
    case $anz in
    0)
      ;;
    1)
      cd $dirs
      ;;
    *)
      select v in $dirs; do
        cd $v;
        break;
      done
      ;;
    esac
    IFS=$IFSOLD
  fi
}
