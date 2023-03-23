<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method = "xml" indent = "yes" /> 
	<xsl:template match="/">

		<bpmn:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="Definitions_09f9qkb" targetNamespace="" exporter="" exporterVersion="">
		<bpmn:process id="Process_0s5eahk" isExecutable="false">

	    <bpmn:laneSet id="LaneSet_1ed4pto">
		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/LaneCollection/Lane">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>
	    	<bpmn:lane>
				<xsl:attribute name="id">Lane_<xsl:value-of select="$myid"/></xsl:attribute>
				<xsl:attribute name="name"><xsl:value-of select="Name"/></xsl:attribute>
	    	</bpmn:lane>
		</xsl:for-each>
	    </bpmn:laneSet>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/Tasks/Task">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>

			<bpmn:task> 
			<xsl:attribute name="id">Activity_<xsl:value-of select="$myid"/></xsl:attribute>
			<xsl:attribute name="name"><xsl:value-of select="Name"/></xsl:attribute>
	      	<!--<bpmn:outgoing>Flow_2d2f2631d6a642f3bf055adcd8c681d5</bpmn:outgoing>-->
    		</bpmn:task>
		</xsl:for-each>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/Gateways/Gateway">
   			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>

			<bpmn:exclusiveGateway>
				<xsl:attribute name="id">Activity_<xsl:value-of select="$myid"/></xsl:attribute>
	    	</bpmn:exclusiveGateway>
		</xsl:for-each>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/SequenceFlows/SequenceFlow">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>

			<xsl:variable name="mySource" select="Source"/>
			<xsl:variable name="mySource" select="translate($mySource,'(','a')"/>
			<xsl:variable name="mySource" select="translate($mySource,')','a')"/>
			<xsl:variable name="mySource" select="translate($mySource,'-','a')"/>

			<xsl:variable name="myTarget" select="Target"/>
			<xsl:variable name="myTarget" select="translate($myTarget,'(','a')"/>
			<xsl:variable name="myTarget" select="translate($myTarget,')','a')"/>
			<xsl:variable name="myTarget" select="translate($myTarget,'-','a')"/>

    		<bpmn:sequenceFlow> 
			<xsl:attribute name="id">Flow_<xsl:value-of select="$myid"/></xsl:attribute>
			<xsl:attribute name="name"><xsl:value-of select="Name"/></xsl:attribute>
			<xsl:attribute name="sourceRef">Activity_<xsl:value-of select="$mySource"/></xsl:attribute> 
			<xsl:attribute name="targetRef">Activity_<xsl:value-of select="$myTarget"/></xsl:attribute>
			</bpmn:sequenceFlow> 

		</xsl:for-each>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/StartEvents/StartEvent">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>

	    	<bpmn:startEvent>
			<xsl:attribute name="id">Activity_<xsl:value-of select="$myid"/></xsl:attribute>
      		</bpmn:startEvent>
		</xsl:for-each>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/EndEvents/EndEvent">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>

	    	<bpmn:endEvent>
			<xsl:attribute name="id">Activity_<xsl:value-of select="$myid"/></xsl:attribute>
      		</bpmn:endEvent>
		</xsl:for-each>

		</bpmn:process>
		<bpmndi:BPMNDiagram id="BPMNDiagram_1">
		<bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_0s5eahk">

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/LaneCollection/Lane">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>

		    <bpmndi:BPMNShape>
				<xsl:attribute name="id">Lane_<xsl:value-of select="$myid"/>_di</xsl:attribute>
				<xsl:attribute name="bpmnElement">Lane_<xsl:value-of select="$myid"/></xsl:attribute>
				<xsl:attribute name="isHorizontal">true</xsl:attribute>
		        <dc:Bounds>
					<xsl:attribute name="x"><xsl:value-of select="MiddlePoint/@X - Size/@Width div 2"/></xsl:attribute>
					<xsl:attribute name="y"><xsl:value-of select="MiddlePoint/@Y - Size/@Height div 2"/></xsl:attribute>
					<xsl:attribute name="width"><xsl:value-of select="Size/@Width"/></xsl:attribute>
					<xsl:attribute name="height"><xsl:value-of select="Size/@Height"/></xsl:attribute>
		        </dc:Bounds>
      		</bpmndi:BPMNShape>
		</xsl:for-each>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/StartEvents/StartEvent">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>
	      	<bpmndi:BPMNShape>
				<xsl:attribute name="id">Activity_<xsl:value-of select="$myid"/>_di</xsl:attribute>
				<xsl:attribute name="bpmnElement">Activity_<xsl:value-of select="$myid"/></xsl:attribute>
		        <dc:Bounds>
					<xsl:attribute name="x"><xsl:value-of select="MiddlePoint/@X - Size/@Width div 2"/></xsl:attribute>
					<xsl:attribute name="y"><xsl:value-of select="MiddlePoint/@Y - Size/@Height div 2"/></xsl:attribute>
					<xsl:attribute name="width"><xsl:value-of select="Size/@Width"/></xsl:attribute>
					<xsl:attribute name="height"><xsl:value-of select="Size/@Height"/></xsl:attribute>
				</dc:Bounds>
      		</bpmndi:BPMNShape>
		</xsl:for-each>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/EndEvents/EndEvent">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>
	      	<bpmndi:BPMNShape>
				<xsl:attribute name="id">Activity_<xsl:value-of select="$myid"/>_di</xsl:attribute>
				<xsl:attribute name="bpmnElement">Activity_<xsl:value-of select="$myid"/></xsl:attribute>
		        <dc:Bounds>
					<xsl:attribute name="x"><xsl:value-of select="MiddlePoint/@X - Size/@Width div 2"/></xsl:attribute>
					<xsl:attribute name="y"><xsl:value-of select="MiddlePoint/@Y - Size/@Height div 2"/></xsl:attribute>
					<xsl:attribute name="width"><xsl:value-of select="Size/@Width"/></xsl:attribute>
					<xsl:attribute name="height"><xsl:value-of select="Size/@Height"/></xsl:attribute>
				</dc:Bounds>
      		</bpmndi:BPMNShape>
		</xsl:for-each>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/Tasks/Task">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>
			<bpmndi:BPMNShape>
				<xsl:attribute name="id">Activity_<xsl:value-of select="$myid"/>_di</xsl:attribute>
				<xsl:attribute name="bpmnElement">Activity_<xsl:value-of select="$myid"/></xsl:attribute>
				<dc:Bounds>
					<xsl:attribute name="x"><xsl:value-of select="MiddlePoint/@X - Size/@Width div 2"/></xsl:attribute>
					<xsl:attribute name="y"><xsl:value-of select="MiddlePoint/@Y - Size/@Height div 2"/></xsl:attribute>
					<xsl:attribute name="width"><xsl:value-of select="Size/@Width"/></xsl:attribute>
					<xsl:attribute name="height"><xsl:value-of select="Size/@Height"/></xsl:attribute>
       			</dc:Bounds>
				<bpmndi:BPMNLabel />
   			</bpmndi:BPMNShape>
		</xsl:for-each>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/Gateways/Gateway">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>
			<bpmndi:BPMNShape>
				<xsl:attribute name="id">Activity_<xsl:value-of select="$myid"/>_di</xsl:attribute>
				<xsl:attribute name="bpmnElement">Activity_<xsl:value-of select="$myid"/></xsl:attribute>
				<xsl:attribute name="isMarkerVisible">true</xsl:attribute>
		        <dc:Bounds> 
					<xsl:attribute name="x"><xsl:value-of select="MiddlePoint/@X - Size/@Width div 2"/></xsl:attribute>
					<xsl:attribute name="y"><xsl:value-of select="MiddlePoint/@Y - Size/@Height div 2"/></xsl:attribute>
					<xsl:attribute name="width"><xsl:value-of select="Size/@Width"/></xsl:attribute>
					<xsl:attribute name="height"><xsl:value-of select="Size/@Height"/></xsl:attribute>
				</dc:Bounds>
			</bpmndi:BPMNShape>
		</xsl:for-each>

		<xsl:for-each select="BPMN/BusinessProcessDiagram/PoolCollection/Pool/Process/BPMNElements/SequenceFlows/SequenceFlow">
			<xsl:variable name="myid" select="@id"/>
			<xsl:variable name="myid" select="translate($myid,'(','a')"/>
			<xsl:variable name="myid" select="translate($myid,')','a')"/>
			<xsl:variable name="myid" select="translate($myid,'-','a')"/>
			<bpmndi:BPMNEdge> 
				<xsl:attribute name="id">Flow_<xsl:value-of select="$myid"/>_di</xsl:attribute>
				<xsl:attribute name="bpmnElement">Flow_<xsl:value-of select="$myid"/></xsl:attribute>
				<xsl:for-each select="./Path/PathElement">
					<di:waypoint>
					<xsl:attribute name="x"><xsl:value-of select="@X"/></xsl:attribute>
					<xsl:attribute name="y"><xsl:value-of select="@Y"/></xsl:attribute>
					 </di:waypoint>
				</xsl:for-each>
			</bpmndi:BPMNEdge> 
		</xsl:for-each>

		</bpmndi:BPMNPlane>
		</bpmndi:BPMNDiagram>
		</bpmn:definitions>
	</xsl:template>
</xsl:stylesheet>