function harry() {
    RAND1="\e[3$(( $RANDOM * 6 / 32767 + 1 ))m"
    RAND2="\e[3$(( $RANDOM * 6 / 32767 + 1 ))m"
    RAND3="\e[3$(( $RANDOM * 6 / 32767 + 1 ))m"
    RAND4="\e[3$(( $RANDOM * 6 / 32767 + 1 ))m"
    RAND5="\e[3$(( $RANDOM * 6 / 32767 + 1 ))m"
    echo -e "${RAND1} .----------------. ${RAND2} .----------------. ${RAND3} .----------------. ${RAND4} .----------------. ${RAND5} .----------------. "
    echo -e "${RAND1}| .--------------. |${RAND2}| .--------------. |${RAND3}| .--------------. |${RAND4}| .--------------. |${RAND5}| .--------------. |"
    echo -e "${RAND1}| |  ____  ____  | |${RAND2}| |      __      | |${RAND3}| |  _______     | |${RAND4}| |  _______     | |${RAND5}| |  ____  ____  | |"
    echo -e "${RAND1}| | |_   ||   _| | |${RAND2}| |     /  \     | |${RAND3}| | |_   __ \    | |${RAND4}| | |_   __ \    | |${RAND5}| | |_  _||_  _| | |"
    echo -e "${RAND1}| |   | |__| |   | |${RAND2}| |    / /\ \    | |${RAND3}| |   | |__) |   | |${RAND4}| |   | |__) |   | |${RAND5}| |   \ \  / /   | |"
    echo -e "${RAND1}| |   |  __  |   | |${RAND2}| |   / ____ \   | |${RAND3}| |   |  __ /    | |${RAND4}| |   |  __ /    | |${RAND5}| |    \ \/ /    | |"
    echo -e "${RAND1}| |  _| |  | |_  | |${RAND2}| | _/ /    \ \_ | |${RAND3}| |  _| |  \ \_  | |${RAND4}| |  _| |  \ \_  | |${RAND5}| |    _|  |_    | |"
    echo -e "${RAND1}| | |____||____| | |${RAND2}| ||____|  |____|| |${RAND3}| | |____| |___| | |${RAND4}| | |____| |___| | |${RAND5}| |   |______|   | |"
    echo -e "${RAND1}| |              | |${RAND2}| |              | |${RAND3}| |              | |${RAND4}| |              | |${RAND5}| |              | |"
    echo -e "${RAND1}| '--------------' |${RAND2}| '--------------' |${RAND3}| '--------------' |${RAND4}| '--------------' |${RAND5}| '--------------' |"
    echo -e "${RAND1} '----------------' ${RAND2} '----------------' ${RAND3} '----------------' ${RAND4} '----------------' ${RAND5} '----------------' "
}
