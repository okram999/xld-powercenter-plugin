export INFA_HOME=${container.home}
export LD_LIBRARY_PATH=${container.home}/server/bin

<#assign pmrep=container.home + "/server/bin/pmrep">
<#assign exitCodeCheck>
res=$?
if [ $res != 0 ] ; then
  exit $res
fi
</#assign>
${pmrep} connect -r ${container.repository} -d ${container.domain} -n ${container.userName} -x ${container.password}
${exitCodeCheck}
