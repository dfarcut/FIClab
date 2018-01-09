if test $# -ne 1
	then echo "Folosire : $0 <fisier.s>"
	exit
fi

if test -f $1

	then
	    
	    mov=`cat $1 | grep -E 'mov' | wc -l`
	    push=`cat $1 | grep -E 'push' | wc -l `
            pop=`cat $1 | grep -E 'pop' | wc -l `

	    add=`cat $1 | grep -E 'add' | wc -l `
	    sub=`cat $1 | grep -E 'sub' | wc -l `
	    xor=`cat $1 | grep -E 'xor' | wc -l `
            and=`cat $1 | grep -E 'and' | wc -l `
            mull=`cat $1 | grep -E 'mull' | wc -l `

	    cmp=`cat $1 | grep -E 'cmp' | wc -l `
	    test=`cat $1 | grep -E 'test' | wc -l `	
   	
            jmp=`cat $1 | grep -E 'jmp' | wc -l `
	    je=`cat $1 | grep -E 'je' | wc -l `
	    jne=`cat $1 | grep -E 'jne' | wc -l `
	    js=`cat $1 | grep -E 'js' | wc -l `
	    jns=`cat $1 | grep -E 'jns' | wc -l `
	    jg=`cat $1 | grep -E 'jg' | wc -l `
		jge=`cat $1 | grep -E 'jge' | wc -l `
		jl=`cat $1 | grep -E 'jl' | wc -l `
		jle=`cat $1 | grep -E 'jl' | wc -l `
		ja=`cat $1 | grep -E 'ja' | wc -l `
		jae=`cat $1 | grep -E 'jae' | wc -l `
		jb=`cat $1 | grep -E 'jb' | wc -l `
		jbe=`cat $1 | grep -E 'jbe' | wc -l `

            call=`cat $1 | grep -E 'call' | wc -l `
            cltq=`cat $1 | grep -E 'cltq' | wc -l `
	    leaq=`cat $1 | grep -E 'leaq' | wc -l `
	    rep=`cat $1 | grep -E 'rep' | wc -l `

else echo "Fisier nu e bun"
fi
contor_arit=0
echo "INSTRUCTIUNI :"
echo
echo " 1. Transfer de date :mov " $mov
echo "                     :push" $push
echo "                     :pop" $pop
echo
contor_arit=`expr $contor_arit + $mov + $push + $pop`
echo "Nr total de instructiuni de transfer de data este :" $contor_arit
echo
contor_aritmetic=0
echo " 2. Aritmetice :add" $add
echo "               :sub" $sub
echo "               :xor" $xor
echo "               :and" $and
echo "               :mull" $mull
echo
contor_aritmetic=`expr $contor_aritmetic + $add + $sub + $xor + $and + $mull `
echo "Nr total de instructiuni artimetice este:" $contor_aritmetic
echo
echo " 3. De control :cmp" $cmp
echo "               :test" $test
echo "               :jmp" $jmp
echo "               :je" $je
echo "               :jne" $jne
echo "               :js" $js
echo "               :jg" $jg
echo "               :jge" $jge
echo "               :jl" $jl
echo "               :jle" $jle
echo "               :ja" $ja
echo "               :jae" $jae
echo "               :jb" $jb
echo "               :jbe" $jbe
echo
contor_control=0
contor_control=`expr $contor_control + $cmp + $test + + $jmp + $je + $jne + $js + $jg + $jge + $jl + $jle + $ja + $jae + $jb + $jbe`
echo "Nr total de instructiuni de control este:" $contor_control
echo
contor_altele=0
echo " 4. Altele :call" $call
echo "           :cltq" $cltq
echo "           :leaq" $leaq
echo "           :rep" $rep
echo
contor_altele=`expr $contor_altele + $call + $cltq + $leaq + $rep`
echo "Nr total de instructiuni de tip altele:" $contor_altele
echo