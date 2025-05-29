<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile doxygen_version="1.9.6" doxygen_gitid="4586b5cfaa3d46d51f6a51882951d15644c49edf">
  <compound kind="file">
    <name>core_mqtt.c</name>
    <path>source/</path>
    <filename>core__mqtt_8c.html</filename>
    <includes id="core__mqtt_8h" name="core_mqtt.h" local="yes" imported="no">core_mqtt.h</includes>
    <includes id="core__mqtt__state_8h" name="core_mqtt_state.h" local="yes" imported="no">core_mqtt_state.h</includes>
    <includes id="core__mqtt__utils_8h" name="core_mqtt_utils.h" local="yes" imported="no">core_mqtt_utils.h</includes>
    <includes id="core__mqtt__config__defaults_8h" name="core_mqtt_config_defaults.h" local="yes" imported="no">core_mqtt_config_defaults.h</includes>
    <class kind="struct">MQTTVec</class>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PRE_SEND_HOOK</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a18f9369f0d6d553db6d1af1bd7156545</anchor>
      <arglist>(pContext)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_POST_SEND_HOOK</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a205b7112b6bb0697f85b9e25512c67be</anchor>
      <arglist>(pContext)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PRE_STATE_UPDATE_HOOK</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>acba4b6e51723d384aa9140313effdf8b</anchor>
      <arglist>(pContext)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_POST_STATE_UPDATE_HOOK</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a436983fba04e3d13cabea35efc4e9bf8</anchor>
      <arglist>(pContext)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>CORE_MQTT_SERIALIZED_LENGTH_FIELD_BYTES</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a989426922a1f5f04ea8b612fd1f4b185</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>CORE_MQTT_SUBSCRIBE_PER_TOPIC_VECTOR_LENGTH</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a97f180c9cc32ca9e354e7c22378a386b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>CORE_MQTT_UNSUBSCRIBE_PER_TOPIC_VECTOR_LENGTH</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a42477ec456354f2b944b47646ee5a9ce</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_MAX_PACKET_SIZE</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ae09b594688a59f1427c7e45259e039b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int32_t</type>
      <name>sendBuffer</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a7f4f9871c75f8f987e3c86ae910bd982</anchor>
      <arglist>(MQTTContext_t *pContext, const uint8_t *pBufferToSend, size_t bytesToSend)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>sendConnectWithoutCopy</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ad49e018ba2258327961e2feecfb4c96f</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTConnectInfo_t *pConnectInfo, const MQTTPublishInfo_t *pWillInfo, size_t remainingLength, const MQTTPropBuilder_t *pPropertyBuilder, const MQTTPropBuilder_t *pWillPropertyBuilder)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int32_t</type>
      <name>sendMessageVector</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a39f478d2bb0366a5f14bfa90316d8d26</anchor>
      <arglist>(MQTTContext_t *pContext, TransportOutVector_t *pIoVec, size_t ioVecCount)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static size_t</type>
      <name>addEncodedStringToVector</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a35952c4a02872c18702e7fbbdb1c467f</anchor>
      <arglist>(uint8_t serializedLength[CORE_MQTT_SERIALIZED_LENGTH_FIELD_BYTES], const char *const string, uint16_t length, TransportOutVector_t *iterator, size_t *updatedLength)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static uint32_t</type>
      <name>calculateElapsedTime</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a04f9f5742bc28fe29e61f3f46d20d3d6</anchor>
      <arglist>(uint32_t later, uint32_t start)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTPubAckType_t</type>
      <name>getAckFromPacketType</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>aa1f35063dbe3b2c35f278ea6aa347a0e</anchor>
      <arglist>(uint8_t packetType)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int32_t</type>
      <name>recvExact</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>abe9fbe1e681fa7b248489ab4a22be49c</anchor>
      <arglist>(MQTTContext_t *pContext, size_t bytesToRecv)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>discardPacket</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>adf873e92a73ab6d02ffc42d4d5ac7c0a</anchor>
      <arglist>(MQTTContext_t *pContext, size_t remainingLength, uint32_t timeoutMs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>discardStoredPacket</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>af827b2088c38c31a0b75dc70377db536</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTPacketInfo_t *pPacketInfo)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>receivePacket</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>abc8174463d6ccb1cbebba1fc08896f41</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTPacketInfo_t incomingPacket, uint32_t remainingTimeMs)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static uint8_t</type>
      <name>getAckTypeToSend</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a02f112e21a6d0b87a3c69ef300d264de</anchor>
      <arglist>(MQTTPublishState_t state)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>sendPublishAcks</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ab4b719d2f726b049c279dcb37fcba840</anchor>
      <arglist>(MQTTContext_t *pContext, uint16_t packetId, MQTTPublishState_t publishState)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>handleKeepAlive</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ae0e50de302a1aa66e3c5b2cdcacc4f3f</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>handleIncomingPublish</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a4ac6e6829500c4f522eae413c9470e4d</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTPacketInfo_t *pIncomingPacket)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>handlePublishAcks</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a2363868c0417261c27c750251aad13e5</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTPacketInfo_t *pIncomingPacket)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>handleIncomingAck</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a264afa489cbfbd96086614d335969115</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTPacketInfo_t *pIncomingPacket, bool manageKeepAlive)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>receiveSingleIteration</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a14d3be6806a945c14c0529daa1714e10</anchor>
      <arglist>(MQTTContext_t *pContext, bool manageKeepAlive)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>validateSubscribeUnsubscribeParams</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a136d2a0b080ba8e5150dff7a9cfe8617</anchor>
      <arglist>(const MQTTContext_t *pContext, const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, uint16_t packetId, MQTTSubscriptionType_t subscriptionType)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>receiveConnack</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a977ee0cfe6c2f856ec904a7ae68e2ef6</anchor>
      <arglist>(MQTTContext_t *pContext, uint32_t timeoutMs, bool cleanSession, MQTTPacketInfo_t *pIncomingPacket, bool *pSessionPresent)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>handleUncleanSessionResumption</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ac9e041563743306d9c9c1cfa01551818</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>handleCleanSession</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a91519103b8929035e95a218d54ce1407</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>sendPublishWithoutCopy</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a750d27d7f4902668e09d50300cfc65ba</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTPublishInfo_t *pPublishInfo, uint8_t *pMqttHeader, size_t headerSize, uint16_t packetId, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>validatePublishParams</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ad7eda8c9d4a5afa7b3f830dbd8cf4de4</anchor>
      <arglist>(const MQTTContext_t *pContext, const MQTTPublishInfo_t *pPublishInfo, uint16_t packetId)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>matchEndWildcardsSpecialCases</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ab29bb66fe7385c52452a3087bcfbc98e</anchor>
      <arglist>(const char *pTopicFilter, uint16_t topicFilterLength, uint16_t filterIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>matchWildcards</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ab1f061741c445d07454cfa03786a5eea</anchor>
      <arglist>(const char *pTopicName, uint16_t topicNameLength, const char *pTopicFilter, uint16_t topicFilterLength, uint16_t *pNameIndex, uint16_t *pFilterIndex, bool *pMatch)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>matchTopicFilter</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a4c052d9dd6a81e866121c24a2ee2aa0b</anchor>
      <arglist>(const char *pTopicName, uint16_t topicNameLength, const char *pTopicFilter, uint16_t topicFilterLength)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>sendPublishAcksWithProperty</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a2f1219a4667444a4777afc54d5304033</anchor>
      <arglist>(MQTTContext_t *pContext, uint16_t packetId, MQTTPublishState_t publishState, MQTTSuccessFailReasonCode_t reasonCode)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>sendDisconnectWithoutCopy</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>acd7b5ffcc0dfa8b090ccb5ad664ce52f</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTSuccessFailReasonCode_t reasonCode, size_t remainingLength, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>MQTT_InitConnect</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ab0fbbe4fa5344eed72e7cd34fb6407d5</anchor>
      <arglist>(MQTTConnectProperties_t *pConnectProperties)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>validatePublishAckReasonCode</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>aefd06ca690c85243752583a40e256623</anchor>
      <arglist>(MQTTSuccessFailReasonCode_t reasonCode)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>handleSuback</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>af5d4af22f8357383a2049403402debd1</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTPacketInfo_t *pIncomingPacket)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>handleIncomingDisconnect</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ae9341249f41a4e230c3baba01d4dac4c</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTPacketInfo_t *pIncomingPacket)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>validateSharedSubscriptions</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a6ecd4a82277da5646048263885b2ef1b</anchor>
      <arglist>(const MQTTContext_t *pContext, const MQTTSubscribeInfo_t *pSubscriptionList, const size_t iterator)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>sendSubscribeWithoutCopy</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a640f9bf643bfb01c6d5bd53815b01089</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, uint16_t packetId, size_t remainingLength, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>sendUnsubscribeWithoutCopy</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ac7c4ff056a557b829428ed9a1c3a720f</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, uint16_t packetId, size_t remainingLength, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>addSubscriptionOptions</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a833c1e91f8d5d37953198c6263a8cd85</anchor>
      <arglist>(const MQTTSubscribeInfo_t pSubscriptionInfo, uint8_t *subscriptionOptionsArray, size_t currentOptionIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>checkWildcardSubscriptions</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a3be6306db7a810bd7fa88a12fb4e667d</anchor>
      <arglist>(uint8_t isWildcardAvailable, const MQTTSubscribeInfo_t *pSubscriptionList, size_t iterator)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>validateSubscribeTopicFilter</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>aee8f28aceda8060d07f853d5e6d72d95</anchor>
      <arglist>(const MQTTContext_t *pContext, const MQTTSubscribeInfo_t *pSubscriptionList, size_t iterator)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Init</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ae8444f3a85535e62cdb1ae9c192677d6</anchor>
      <arglist>(MQTTContext_t *pContext, const TransportInterface_t *pTransportInterface, MQTTGetCurrentTimeFunc_t getTimeFunction, MQTTEventCallback_t userCallback, const MQTTFixedBuffer_t *pNetworkBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_InitStatefulQoS</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ab60a5273df6903bba29e1eb0ea3b83aa</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTPubAckInfo_t *pOutgoingPublishRecords, size_t outgoingPublishCount, MQTTPubAckInfo_t *pIncomingPublishRecords, size_t incomingPublishCount, uint8_t *pBuffer, size_t bufferLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_InitRetransmits</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>af2d6f94bf234a888541919195002a13f</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTStorePacketForRetransmit storeFunction, MQTTRetrievePacketForRetransmit retrieveFunction, MQTTClearPacketForRetransmit clearFunction)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_CancelCallback</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a31b74c34cd295b98ed5f5b4c15ed4a8b</anchor>
      <arglist>(const MQTTContext_t *pContext, uint16_t packetId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_CheckConnectStatus</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ab42f3cc5a0681373e4ee973df062bbcd</anchor>
      <arglist>(const MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Connect</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ae8209f46a683fffd5634b83c3bc2e128</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTConnectInfo_t *pConnectInfo, const MQTTPublishInfo_t *pWillInfo, uint32_t timeoutMs, bool *pSessionPresent, const MQTTPropBuilder_t *pPropertyBuilder, const MQTTPropBuilder_t *pWillPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Subscribe</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ac038c272d04880c46e75406ace568b77</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, uint16_t packetId, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Publish</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>af495ad1fb62be67b92be65c0b9ed0050</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTPublishInfo_t *pPublishInfo, uint16_t packetId, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Ping</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a66eced0c62ace790354ae3de40fc0959</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Unsubscribe</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a815ff2a751eb8ac3bb4f7ea4f8420154</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, uint16_t packetId, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Disconnect</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ac5c0fb336de2130f781cd05ca83cee2f</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTPropBuilder_t *pPropertyBuilder, MQTTSuccessFailReasonCode_t reasonCode)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ProcessLoop</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ab95d3d6b3eed98a6184fb2018c5b55d7</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ReceiveLoop</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>aeb7c37284fcf6f68eb577427a6763fc6</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>uint16_t</type>
      <name>MQTT_GetPacketId</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a00e1a3eba2c21899a6b4312c7d65d090</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_MatchTopic</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a633409812b18547365ec9b853069021b</anchor>
      <arglist>(const char *pTopicName, const uint16_t topicNameLength, const char *pTopicFilter, const uint16_t topicFilterLength, bool *pIsMatch)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetSubAckStatusCodes</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ac43449e06856c6703cda73359c222bd2</anchor>
      <arglist>(const MQTTPacketInfo_t *pSubackPacket, uint8_t **pPayloadStart, size_t *pPayloadSize)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>MQTT_Status_strerror</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a05d9facfce89c5f9edef09ca13717f50</anchor>
      <arglist>(MQTTStatus_t status)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>MQTT_GetBytesInMQTTVec</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a4d6610604dc1ca49dd24888019d4445e</anchor>
      <arglist>(const MQTTVec_t *pVec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>MQTT_SerializeMQTTVec</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>ab65e1ed5db559aa7d9158e9311048b7e</anchor>
      <arglist>(uint8_t *pAllocatedMem, const MQTTVec_t *pVec)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_PropertyBuilder_Init</name>
      <anchorfile>core__mqtt_8c.html</anchorfile>
      <anchor>a91ff4ad8264c8fbb8a29f8a26f31773d</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint8_t *buffer, size_t length)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>core_mqtt_serializer.c</name>
    <path>source/</path>
    <filename>core__mqtt__serializer_8c.html</filename>
    <includes id="core__mqtt__serializer_8h" name="core_mqtt_serializer.h" local="yes" imported="no">core_mqtt_serializer.h</includes>
    <includes id="core__mqtt__utils_8h" name="core_mqtt_utils.h" local="yes" imported="no">core_mqtt_utils.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_CONNECT_HEADER_SIZE</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aa7c310cb084af0025c356ed844ae443d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_CONNECT_FLAG_CLEAN</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a1b131e766e003e36fe499d9f6a79fc03</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_CONNECT_FLAG_WILL</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a04d8c55ea2b595a277cbcd4340e36d6c</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_CONNECT_FLAG_WILL_QOS1</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a2aee739b1fa7e61feb907bc92a73c3b4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_CONNECT_FLAG_WILL_QOS2</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ac750789b338a2b9be75725ab340dabce</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_CONNECT_FLAG_WILL_RETAIN</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a8ae294d4ca7960920816339fedbdc4a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_CONNECT_FLAG_PASSWORD</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ac5f0bb47789c1182392f5029e0238a81</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_CONNECT_FLAG_USERNAME</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a8d23d14a4cf296feffb9db79728dd1d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_FLAG_RETAIN</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a3d04b1e1ad7ec25d18fd13726e164f06</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_FLAG_QOS1</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ac23212835606fade167fb5ce25eaf103</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_FLAG_QOS2</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>afe1d2a0b7c0803f5a20ebb3c7a607d65</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_FLAG_DUP</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a57c437ecc3720de76093b08eb0d4f813</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_PINGREQ_SIZE</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a6e8a49d0d88f0b038a5379d533858103</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_CONNACK_SESSION_PRESENT_MASK</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aab69dd14c12f8086245c2371288944f0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_SIMPLE_ACK_REMAINING_LENGTH</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a4c576df64bca769a91cb64d5d5d86505</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_PINGRESP_REMAINING_LENGTH</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aeab5c92e86ed98750cbf6422b8b57c06</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_MAX_REMAINING_LENGTH</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a9d9ea40a1ff486557a553523a0743647</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_MAX_PACKET_SIZE</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ae09b594688a59f1427c7e45259e039b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_VERSION_5</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>acb92be6482db7e3847e9b7a51d1246fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_ACK_PACKET_SIZE_WITH_REASON</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga0739186459bf69b04e79cec3492493d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUBSCRIPTION_ID_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a244f6f3a77139d1ff13e1fb2c737caf1</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SESSION_EXPIRY_INTERVAL_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5c39a6cbd1e010d54426c4374d9df977</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_RECEIVE_MAXIMUM_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ad42fcef2928f85f7930f8fb21ff08c4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_MAX_PACKET_SIZE_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a1bb69f8dabc7d924f44d8ec26b0cc8c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_TOPIC_ALIAS_MAX_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a798ffefa808fae297a73190252092f9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_REQUEST_RESPONSE_INFO_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ae19b0cd820f1bf3d9ff3ba4aae8abb06</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_REQUEST_PROBLEM_INFO_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a553abd40d7bd84ab3276683967368875</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_USER_PROPERTY_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a91ffa763a97b8d36e2b4f96d63a9256a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_AUTHENTICATION_METHOD_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a808e34151fed55fb4190fd2a4f3decb8</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_AUTHENTICATION_DATA_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>acfd4605e9d19308eab0796862918ba75</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PAYLOAD_FORMAT_INDICATOR_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>acb0c25196858a4d9ba920fb24a14033d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_MESSAGE_EXPIRY_INTERVAL_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a59f5b4d203569d3fde99ee4438be7ab4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_TOPIC_ALIAS_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a6dea189e7dd19179b61d43f9fc6855aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_RESPONSE_TOPIC_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a00acb6938d3fb735e0ece311d5ecc83a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_CORRELATION_DATA_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5fad8e1304e16eb5fc872a22d3578612</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_SUBSCRIPTION_IDENTIFIER_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a49d0a18c6b7726467c9d81cd8a3c45c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_CONTENT_TYPE_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a96d5a11b95a9f3a1a4c1d220b9a54614</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_REASON_STRING_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a4e62361869698201ab19e0e13f8a1552</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_WILL_DELAY_POS</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ae93b83901589e79aedee599adb9a2437</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_REMAINING_LENGTH_INVALID</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a6f6b43661df6f9e9e9e7123ab01e9eb5</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>serializePublishCommon</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a10a6935b9af1ff6ecfcc72971a4d4566</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, const MQTTPropBuilder_t *pPublishProperties, size_t remainingLength, uint16_t packetIdentifier, const MQTTFixedBuffer_t *pFixedBuffer, bool serializePayload)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>calculatePublishPacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ad6958d6a4064feede191d6fbd0a3c468</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize, size_t publishPropertyLength)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>calculateSubscriptionPacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ad8f66e908660afe5f896b0a607403a28</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, size_t *pRemainingLength, size_t *pPacketSize, size_t subscribePropLen, uint32_t maxPacketSize, MQTTSubscriptionType_t subscriptionType)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>validateSubscriptionSerializeParams</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a81262cb0b9d47dee979420f6fd8a7271</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, uint16_t packetId, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>serializeConnectPacket</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a0738cc127442cf185aa0d5e63dd4b022</anchor>
      <arglist>(const MQTTConnectInfo_t *pConnectInfo, const MQTTPublishInfo_t *pWillInfo, const MQTTPropBuilder_t *pConnectProperties, const MQTTPropBuilder_t *pWillProperties, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static size_t</type>
      <name>variableLengthEncodedSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a3ba56eb394623b1c8a28f704a57b5710</anchor>
      <arglist>(size_t length)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static uint8_t *</type>
      <name>encodeString</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a60e580c28431eb08f05a156949137f1f</anchor>
      <arglist>(uint8_t *pDestination, const char *pSource, uint16_t sourceLength)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static size_t</type>
      <name>getRemainingLength</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5685b753d1d42788a00bd59ffa4639e2</anchor>
      <arglist>(TransportRecv_t recvFunc, NetworkContext_t *pNetworkContext)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>processRemainingLength</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a8a4f72e05cd72fa57ba5a90e204569b3</anchor>
      <arglist>(const uint8_t *pBuffer, const size_t *pIndex, MQTTPacketInfo_t *pIncomingPacket)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>incomingPacketValid</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a03dfebbfbc1635567839f7abb7c0f8db</anchor>
      <arglist>(uint8_t packetType)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>checkPublishRemainingLength</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a33a2680aab1ce2186acd7c78aeb270f1</anchor>
      <arglist>(size_t remainingLength, MQTTQoS_t qos, size_t qos0Minimum)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>processPublishFlags</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a47a044115ee5df1ac7fe02d2ee37e1e0</anchor>
      <arglist>(uint8_t publishFlags, MQTTPublishInfo_t *pPublishInfo)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>deserializePublish</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a4f9fff11d3be696521aa8e6627e999a5</anchor>
      <arglist>(const MQTTPacketInfo_t *pIncomingPacket, uint16_t *pPacketId, MQTTPublishInfo_t *pPublishInfo, MQTTPropBuilder_t *propBuffer, uint16_t topicAliasMax)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>deserializePingresp</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>afdd9b08562ccaa6cf8dd68baa6bc7060</anchor>
      <arglist>(const MQTTPacketInfo_t *pPingresp)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeAndDiscard</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a0db1366e29332f3c86dc6a429492a587</anchor>
      <arglist>(size_t *pPropertyLength, uint8_t **pIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeVariableLength</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aed73b25cda4bc68412d9037b2f69c407</anchor>
      <arglist>(const uint8_t *pBuffer, size_t *pLength)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>validateConnackParams</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a024626265eee4668fe7b6ade70c96b5b</anchor>
      <arglist>(const MQTTPacketInfo_t *pIncomingPacket, bool *pSessionPresent)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>logConnackResponse</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a3c3fb6b0fd13daf55ae2933cd5404e3c</anchor>
      <arglist>(uint8_t responseCode)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeuint32_t</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>af553f7da6c5d9b3e8e1ecbea7647574e</anchor>
      <arglist>(uint32_t *pProperty, size_t *pPropertyLength, bool *pUsed, uint8_t **pIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeuint16_t</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5b3a8b200339c85ca95b126647b2fb85</anchor>
      <arglist>(uint16_t *pProperty, size_t *pPropertyLength, bool *pUsed, uint8_t **pIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeuint8_t</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>afcebbc9286ba29abdb91eeb6016f559e</anchor>
      <arglist>(uint8_t *pProperty, size_t *pPropertyLength, bool *pUsed, uint8_t **pIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeutf_8</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a02cecf669f6a4f79ae7c045aa0d5d01d</anchor>
      <arglist>(const char **pProperty, uint16_t *pLength, size_t *pPropertyLength, bool *pUsed, uint8_t **pIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>deserializeConnackProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>afb3c71e2b3a8fa0028b81223608a3c55</anchor>
      <arglist>(MQTTConnectProperties_t *pConnackProperties, size_t length, uint8_t *pIndex, MQTTPropBuilder_t *propBuffer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>logAckResponse</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a12a842d46152bbfea5c8eaee3984960b</anchor>
      <arglist>(uint8_t reasonCode, uint16_t packetIdentifier)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>logSimpleAckResponse</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aca72d53cfbf5ffff8562405511c68008</anchor>
      <arglist>(uint8_t reasonCode, uint16_t packetIdentifier)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeAckProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aebd3e6eeaadbd6cbee7eb9d62e5b4ef6</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *pIndex, size_t remainingLength)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>deserializeSimpleAck</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a23f4586c06f75116d8ae8d4c99470f54</anchor>
      <arglist>(const MQTTPacketInfo_t *pAck, uint16_t *pPacketIdentifier, MQTTReasonCodeInfo_t *pReasonCode, bool requestProblem, MQTTPropBuilder_t *propBuffer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>validateDisconnectResponse</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5fef6236a64ace77eff66a4195214e18</anchor>
      <arglist>(uint8_t reasonCode, bool incoming)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>deserializeSubackProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>af60292eda72bff0db37f90b7f32c40df</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *pIndex, size_t *pSubackPropertyLength)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>deserializePublishProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ad3e9a21bebb7713a02709191b5e38d3c</anchor>
      <arglist>(MQTTPublishInfo_t *pPublishInfo, MQTTPropBuilder_t *propBuffer, uint8_t *pIndex, uint16_t topicAliasMax)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeAndDiscardutf_8</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a61d52eef7192eaf83f0678e95b0cd6b4</anchor>
      <arglist>(size_t *pPropertyLength, bool *pUsed, uint8_t **pIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeAndDiscard_uint8</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a15ad6f326e671aa0b44a28c7e3ddc64a</anchor>
      <arglist>(size_t *pPropertyLength, bool *pUsed, uint8_t **pIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeAndDiscard_uint32</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a42830946f76e6cb2e38e2290c4c4c2a7</anchor>
      <arglist>(size_t *pPropertyLength, bool *pUsed, uint8_t **pIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>readSubackStatus</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ac38705c4e45b4c39207bb620154088cd</anchor>
      <arglist>(size_t statusCount, const uint8_t *pStatusStart, MQTTReasonCodeInfo_t *ackInfo)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>decodeBinaryData</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>af792e0f368832dcf2e9e6990eedee97e</anchor>
      <arglist>(const void **pProperty, uint16_t *pLength, size_t *pPropertyLength, uint8_t **pIndex)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static uint8_t *</type>
      <name>encodeBinaryData</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aac108c1d8123c58208985631e923bdac</anchor>
      <arglist>(uint8_t *pDestination, const void *pSource, uint16_t sourceLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>deserializeConnack</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ab5fefc0a69e444c200cbce5a871b38df</anchor>
      <arglist>(MQTTConnectProperties_t *pConnackProperties, const MQTTPacketInfo_t *pIncomingPacket, bool *pSessionPresent, MQTTPropBuilder_t *propBuffer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>deserializeSuback</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a1dc7a9af35801bbf6216910fd59762fa</anchor>
      <arglist>(const MQTTPacketInfo_t *incomingPacket, uint16_t *pPacketId, MQTTReasonCodeInfo_t *subackReasonCodes, MQTTPropBuilder_t *propBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializePublishHeaderWithoutTopic</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a32de7fabeca85a4d360fa1dd06ff7cd0</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, size_t remainingLength, uint8_t *pBuffer, size_t *headerSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_DeserializePublish</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a491ba3d7ace4451bd808779779c540b5</anchor>
      <arglist>(const MQTTPacketInfo_t *pIncomingPacket, uint16_t *pPacketId, MQTTPublishInfo_t *pPublishInfo, MQTTPropBuilder_t *propBuffer, uint32_t maxPacketSize, uint16_t topicAliasMax)</arglist>
    </member>
    <member kind="function">
      <type>uint8_t *</type>
      <name>MQTT_SerializeConnectFixedHeader</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5e6043289c05db1cdb7e33e0921247a0</anchor>
      <arglist>(uint8_t *pIndex, const MQTTConnectInfo_t *pConnectInfo, const MQTTPublishInfo_t *pWillInfo, size_t remainingLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetConnectPacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aa01f6786a41772dfd0dc4fb7592164be</anchor>
      <arglist>(const MQTTConnectInfo_t *pConnectInfo, const MQTTPublishInfo_t *pWillInfo, const MQTTPropBuilder_t *pConnectProperties, const MQTTPropBuilder_t *pWillProperties, size_t *pRemainingLength, size_t *pPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeConnect</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>acc6faa0c49ba94e476957f0dd5b57019</anchor>
      <arglist>(const MQTTConnectInfo_t *pConnectInfo, const MQTTPublishInfo_t *pWillInfo, const MQTTPropBuilder_t *pConnectProperties, const MQTTPropBuilder_t *pWillProperties, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetSubscribePacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ad8e7a3a434fcea85cf85fa88575fd0f5</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, const MQTTPropBuilder_t *pSubscribeProperties, size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>uint8_t *</type>
      <name>MQTT_SerializeSubscribeHeader</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a6fe31953d7b8dacb769adcf4c2719730</anchor>
      <arglist>(size_t remainingLength, uint8_t *pIndex, uint16_t packetId)</arglist>
    </member>
    <member kind="function">
      <type>uint8_t *</type>
      <name>MQTT_SerializeUnsubscribeHeader</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5b6f47fa319a444835ffed2d6af04709</anchor>
      <arglist>(size_t remainingLength, uint8_t *pIndex, uint16_t packetId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeSubscribe</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a74805b873842db385d7d30a50f17c0e3</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, const MQTTPropBuilder_t *pSubscribeProperties, uint16_t packetId, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetUnsubscribePacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a21efe87938f8c79aed8fdf62db147129</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, const MQTTPropBuilder_t *pUnsubscribeProperties, size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeUnsubscribe</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a6dca7a2ccd47f0dcb908eb751be41065</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, const MQTTPropBuilder_t *pUnsubscribeProperties, uint16_t packetId, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetPublishPacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a6a169c57c8e56af08fe9862101cf551b</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, const MQTTPropBuilder_t *pPublishProperties, size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializePublish</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aa87cc187e0040187ffbf2ea471be42b0</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, const MQTTPropBuilder_t *pPublishProperties, uint16_t packetId, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializePublishHeader</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5d7548f456673d99c7e763389f2e654d</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, const MQTTPropBuilder_t *pPublishProperties, uint16_t packetId, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer, size_t *pHeaderSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeAck</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a11ea4ac5ea27e93121288e463ca34ee6</anchor>
      <arglist>(const MQTTFixedBuffer_t *pFixedBuffer, uint8_t packetType, uint16_t packetId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetDisconnectPacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a85c60cc9ad2a5c95a25c582fd67a4ba6</anchor>
      <arglist>(const MQTTPropBuilder_t *pDisconnectProperties, size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize, MQTTSuccessFailReasonCode_t reasonCode)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeDisconnect</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a466b8d5dadd468bddcee3c5d706e0da3</anchor>
      <arglist>(const MQTTPropBuilder_t *pDisconnectProperties, MQTTSuccessFailReasonCode_t reasonCode, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetPingreqPacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a015562f30e220d2534f773bfa45a5cfe</anchor>
      <arglist>(size_t *pPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializePingreq</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>af3b3e40858fd984c871511e02a61e15d</anchor>
      <arglist>(const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetIncomingPacketTypeAndLength</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a98cdda86f86a0a1888745a584199e930</anchor>
      <arglist>(TransportRecv_t readFunc, NetworkContext_t *pNetworkContext, MQTTPacketInfo_t *pIncomingPacket)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ProcessIncomingPacketTypeAndLength</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a94fd3f746074b3f6e16ae6b23dad9a28</anchor>
      <arglist>(const uint8_t *pBuffer, const size_t *pIndex, MQTTPacketInfo_t *pIncomingPacket)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>updateContextWithConnectProps</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5c5802e11c75b3c0e3e979865cd0421b</anchor>
      <arglist>(const MQTTPropBuilder_t *pPropBuilder, MQTTConnectProperties_t *pConnectProperties)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidatePublishParams</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ae349b08ac962a464a0f1491748765bd0</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, uint8_t retainAvailable, uint8_t maxQos, uint16_t topicAlias, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidatePublishProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a162d32c54e27ce976c2a5bec5deed3dc</anchor>
      <arglist>(uint16_t serverTopicAliasMax, const MQTTPropBuilder_t *propBuilder, uint16_t *topicAlias)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidateSubscribeProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a976feef048610e20a029cb695c5ae9a4</anchor>
      <arglist>(uint8_t isSubscriptionIdAvailable, const MQTTPropBuilder_t *propBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_DeserializeAck</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a4190e4afadc1fb60d3a300b6c59c84d2</anchor>
      <arglist>(const MQTTPacketInfo_t *pIncomingPacket, uint16_t *pPacketId, bool *pSessionPresent, MQTTReasonCodeInfo_t *pReasonCode, bool requestProblem, uint32_t maxPacketSize, MQTTPropBuilder_t *propBuffer, MQTTConnectProperties_t *pConnectProperties)</arglist>
    </member>
    <member kind="function">
      <type>uint8_t *</type>
      <name>MQTT_SerializeAckFixed</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a36555d05e7113c0d1119a50cdd0b056f</anchor>
      <arglist>(uint8_t *pIndex, uint8_t packetType, uint16_t packetId, size_t remainingLength, MQTTSuccessFailReasonCode_t reasonCode)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetAckPacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a4a2afce41b84962ce709dc23ab889b31</anchor>
      <arglist>(size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize, size_t ackPropertyLength)</arglist>
    </member>
    <member kind="function">
      <type>uint8_t *</type>
      <name>MQTT_SerializeDisconnectFixed</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ab95c259a35033339edf7a6681791ddfc</anchor>
      <arglist>(uint8_t *pIndex, MQTTSuccessFailReasonCode_t reasonCode, size_t remainingLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_DeserializeDisconnect</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a1f42b448bfca04d5604f03d556d64a5a</anchor>
      <arglist>(const MQTTPacketInfo_t *pPacket, uint32_t maxPacketSize, MQTTReasonCodeInfo_t *pDisconnectInfo, MQTTPropBuilder_t *propBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_SubscribeId</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aeb58017c48bafc412e9c36a360530c38</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, size_t subscriptionId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_UserProp</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a0dbffa853c25206a99f87a44a5280438</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const MQTTUserProperty_t *userProperty)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_UpdateDuplicatePublishFlag</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a269f0b0e193a7a10a6e392b88768ae94</anchor>
      <arglist>(uint8_t *pHeader, bool set)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_SessionExpiry</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a17c03872f40100ab2d56c1cb829cba4f</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint32_t sessionExpiry)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnReceiveMax</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>af41d5e87bb6078933ede99befcbba376</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint16_t receiveMax)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnMaxPacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a52738c7f6547d1f86d850dd88f56883a</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnTopicAliasMax</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ab9715f70ab34e14ffdb794a62b58a587</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint16_t topicAliasMax)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnRequestRespInfo</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a60c171bbba71f3b6832fd9ca2b64370d</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, bool requestResponseInfo)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnRequestProbInfo</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a2e76345b488e8d87ee406eda22f5956d</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, bool requestProblemInfo)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnAuthMethod</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>adc076cb22e3cc099161bfa948e8e0bc0</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *authMethod, uint16_t authMethodLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnAuthData</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a342137a83c82f69ae526a376db45a8b9</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *authData, uint16_t authDataLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubPayloadFormat</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5e2fa191757644d2559c90001b8b8f83</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, bool payloadFormat)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubMessageExpiry</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a532da63e245d0c8cef901d15cfd815f0</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint32_t messageExpiry)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_WillDelayInterval</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a65561aea3cd62f3e40116aa756ce961c</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint32_t willDelayInterval)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubTopicAlias</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ac3001a2ec87f85ef43a3e4a108f509b0</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint16_t topicAlias)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubResponseTopic</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ab8222e233b9495492a8997dde96301df</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *responseTopic, uint16_t responseTopicLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubCorrelationData</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a74a0357632bbcc2d8cb312a792da2460</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const void *pCorrelationData, uint16_t correlationLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubContentType</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>af097e4d01e29eed061cc8e87d9a60a73</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *contentType, uint16_t contentTypeLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ReasonString</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ae8c80019e58eb6d2d4771e535395b061</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *pReasonString, uint16_t reasonStringLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubTopicAlias</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a817d532f7d750b70c9bada752afabc26</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint16_t *topicAlias)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubPayloadFormatIndicator</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>afd52b8d51fc124c7dda32d07a2428fd0</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *payloadFormat)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubResponseTopic</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5c9008e6435eb5faaf7c087815f061be</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **responseTopic, uint16_t *responseTopicLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubCorrelationData</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ab8bc55e18c8ba9276616e24169f2d894</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const void **correlationData, uint16_t *correlationLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubMessageExpiryInterval</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a323ca6ef83367282096e884de3ae285d</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint32_t *msgExpiryInterval)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubContentType</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a23676dbde05e455b002b9ef21a8691b4</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pContentType, uint16_t *contentTypeLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubSubscriptionId</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a1013d87cc1a5f898a14ad1cf06a6c7a6</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, size_t *subscriptionId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_SessionExpiry</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a7b80a54a7b7291e258363b0130f1e8b5</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint32_t *sessionExpiry)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnTopicAliasMax</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>acdc71064f593afae08d5e0a564db19ac</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint16_t *topicAliasMax)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnReceiveMax</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a4d5cec94c39adbac6ee6e49aac681548</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint16_t *receiveMax)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnMaxQos</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a04f5bfb96aed401a48b971cbf6e7c527</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *maxQos)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnRetainAvailable</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aec29acd9357c65745d4fa9fe59efc04e</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *retainAvailable)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnMaxPacketSize</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aa520c8b6563ab09ca5a1bbfcaea1d253</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint32_t *maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnClientId</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ade3e1275070efde94888f671657433ce</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pClientId, uint16_t *clientIdLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnWildcard</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a66aa626c026903d4daf8fa83746af3dd</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *isWildCardAvailable)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnSubId</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a0ed6f3592dfb8896a5c0d969b0526607</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *isSubIdAvailable)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_UserProp</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>ac6a916e2e668862bcaac135645b857e6</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pUserPropKey, uint16_t *pUserPropKeyLen, const char **pUserPropVal, uint16_t *pUserPropValLen)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ReasonString</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a77558c7d5b771c65d3242a4525cf20cb</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pReasonString, uint16_t *reasonStringLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ServerRef</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a3019ea143094dec3cd98d1b788fc4fff</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pServerRef, uint16_t *serverRefLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnSharedSubAvailable</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a852214ef36e3db3e0dab33a84febc79a</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *isSharedSubAvailable)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnServerKeepAlive</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a46b5807775fff0b5b13b00170cd731bf</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint16_t *serverKeepAlive)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnResponseInfo</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a971b7784b761ef9ff30f9365c3fecd27</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pResponseInfo, uint16_t *responseInfoLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnAuthMethod</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>adb48baa731b7f19f72446b87f305c8ec</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pAuthMethod, uint16_t *authMethodLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnAuthData</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a7e4cf4843e10e576e7b2547ba8518ef7</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pAuthData, uint16_t *authDataLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_IncomingGetNextProp</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>af348ec2a8a3a331fd6c04a4b7cf52c81</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *propertyId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidateDisconnectProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a5bfe18401ff9848c18729640f7cef6e7</anchor>
      <arglist>(uint32_t connectSessionExpiry, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidateUnsubscribeProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aefeb3ff88a39059bd8a598bb63483992</anchor>
      <arglist>(const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidateWillProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>a7e1952aacd4318c304c79d896835bd06</anchor>
      <arglist>(const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidatePublishAckProperties</name>
      <anchorfile>core__mqtt__serializer_8c.html</anchorfile>
      <anchor>aec02145ce3dc1b8745b5ad96de5820cf</anchor>
      <arglist>(const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>core_mqtt_state.c</name>
    <path>source/</path>
    <filename>core__mqtt__state_8c.html</filename>
    <includes id="core__mqtt__state_8h" name="core_mqtt_state.h" local="yes" imported="no">core_mqtt_state.h</includes>
    <includes id="core__mqtt__config__defaults_8h" name="core_mqtt_config_defaults.h" local="yes" imported="no">core_mqtt_config_defaults.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_INVALID_STATE_COUNT</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a49d2236ebe2b3d27e82e54a7b9e74984</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT16_BITMAP_BIT_SET_AT</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a50892214c51968df798f584272f16a17</anchor>
      <arglist>(position)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT16_SET_BIT</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>acd96521b31682b7d93de544704fd9594</anchor>
      <arglist>(x, position)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT16_CHECK_BIT</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a085ab1307745f304ce2e6d24bdc3f6a7</anchor>
      <arglist>(x, position)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>validateTransitionPublish</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>aad1473b9a2d46be62c3e80dd3524af9d</anchor>
      <arglist>(MQTTPublishState_t currentState, MQTTPublishState_t newState, MQTTStateOperation_t opType, MQTTQoS_t qos)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>validateTransitionAck</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>ac85ca8874163b399b7f8e5e17d3c5872</anchor>
      <arglist>(MQTTPublishState_t currentState, MQTTPublishState_t newState)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>isPublishOutgoing</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>aaf9d4c6e766e40189ff7b68ffea40aa0</anchor>
      <arglist>(MQTTPubAckType_t packetType, MQTTStateOperation_t opType)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static size_t</type>
      <name>findInRecord</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>ac805558ac65e84ea9111ce70c873e59e</anchor>
      <arglist>(const MQTTPubAckInfo_t *records, size_t recordCount, uint16_t packetId, MQTTQoS_t *pQos, MQTTPublishState_t *pCurrentState)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>compactRecords</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a6cd7b86de2ddb125fee886d58d1a5fd4</anchor>
      <arglist>(MQTTPubAckInfo_t *records, size_t recordCount)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>addRecord</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a5d0ffdfde0c38a1cc1d4e3f4750a8cc4</anchor>
      <arglist>(MQTTPubAckInfo_t *records, size_t recordCount, uint16_t packetId, MQTTQoS_t qos, MQTTPublishState_t publishState)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>updateRecord</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a819c7c72087621fcf97a028bff02759e</anchor>
      <arglist>(MQTTPubAckInfo_t *records, size_t recordIndex, MQTTPublishState_t newState, bool shouldDelete)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static uint16_t</type>
      <name>stateSelect</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>adfc09b0c75d5de09cd73650f944699c0</anchor>
      <arglist>(const MQTTContext_t *pMqttContext, uint16_t searchStates, MQTTStateCursor_t *pCursor)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>updateStateAck</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a174a91b9491a344d6fb4f0b39189392f</anchor>
      <arglist>(MQTTPubAckInfo_t *records, size_t maxRecordCount, size_t recordIndex, uint16_t packetId, MQTTPublishState_t currentState, MQTTPublishState_t newState)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static MQTTStatus_t</type>
      <name>updateStatePublish</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>aa0550584e3733da2e31c9478b9307b49</anchor>
      <arglist>(const MQTTContext_t *pMqttContext, size_t recordIndex, uint16_t packetId, MQTTStateOperation_t opType, MQTTQoS_t qos, MQTTPublishState_t currentState, MQTTPublishState_t newState)</arglist>
    </member>
    <member kind="function">
      <type>MQTTPublishState_t</type>
      <name>MQTT_CalculateStateAck</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a0cad28e34f03b84aff43ee243ce8e2cf</anchor>
      <arglist>(MQTTPubAckType_t packetType, MQTTStateOperation_t opType, MQTTQoS_t qos)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ReserveState</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a43bc5d82716e1d8b6e167ec0fe50de5d</anchor>
      <arglist>(const MQTTContext_t *pMqttContext, uint16_t packetId, MQTTQoS_t qos)</arglist>
    </member>
    <member kind="function">
      <type>MQTTPublishState_t</type>
      <name>MQTT_CalculateStatePublish</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>aadc4fdd8af74ac25b848a33e916bff50</anchor>
      <arglist>(MQTTStateOperation_t opType, MQTTQoS_t qos)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_UpdateStatePublish</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>ad657bd67745c66bc50f0441b4cc94763</anchor>
      <arglist>(const MQTTContext_t *pMqttContext, uint16_t packetId, MQTTStateOperation_t opType, MQTTQoS_t qos, MQTTPublishState_t *pNewState)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_RemoveStateRecord</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>aef2c13cffbbd5c71183282e69ac9d799</anchor>
      <arglist>(const MQTTContext_t *pMqttContext, uint16_t packetId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_UpdateStateAck</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a09a013b709085ffd51faa33c067cce1f</anchor>
      <arglist>(const MQTTContext_t *pMqttContext, uint16_t packetId, MQTTPubAckType_t packetType, MQTTStateOperation_t opType, MQTTPublishState_t *pNewState)</arglist>
    </member>
    <member kind="function">
      <type>uint16_t</type>
      <name>MQTT_PubrelToResend</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>ae58ade262ec01262687554b349b2fdf5</anchor>
      <arglist>(const MQTTContext_t *pMqttContext, MQTTStateCursor_t *pCursor, MQTTPublishState_t *pState)</arglist>
    </member>
    <member kind="function">
      <type>uint16_t</type>
      <name>MQTT_PublishToResend</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a44b3cf50dc477a9f97413a9238a961f6</anchor>
      <arglist>(const MQTTContext_t *pMqttContext, MQTTStateCursor_t *pCursor)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>MQTT_State_strerror</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>a53d786203ca4d5d5630a9eb3dd4cddae</anchor>
      <arglist>(MQTTPublishState_t state)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const size_t</type>
      <name>ZERO_SIZE_T</name>
      <anchorfile>core__mqtt__state_8c.html</anchorfile>
      <anchor>ab93bbb754488b23d5ac75abcd385e086</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>core_mqtt_utils.c</name>
    <path>source/</path>
    <filename>core__mqtt__utils_8c.html</filename>
    <includes id="core__mqtt__config__defaults_8h" name="core_mqtt_config_defaults.h" local="yes" imported="no">core_mqtt_config_defaults.h</includes>
    <includes id="core__mqtt__utils_8h" name="core_mqtt_utils.h" local="yes" imported="no">core_mqtt_utils.h</includes>
    <member kind="function">
      <type>uint8_t *</type>
      <name>encodeVariableLength</name>
      <anchorfile>core__mqtt__utils_8c.html</anchorfile>
      <anchor>ad8f2f64d11941dbc439906c174bcc844</anchor>
      <arglist>(uint8_t *pDestination, size_t length)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>core_mqtt.h</name>
    <path>source/include/</path>
    <filename>core__mqtt_8h.html</filename>
    <includes id="core__mqtt__serializer_8h" name="core_mqtt_serializer.h" local="yes" imported="no">core_mqtt_serializer.h</includes>
    <includes id="transport__interface_8h" name="transport_interface.h" local="yes" imported="no">transport_interface.h</includes>
    <class kind="struct">MQTTPubAckInfo_t</class>
    <class kind="struct">MQTTContext_t</class>
    <class kind="struct">MQTTDeserializedInfo_t</class>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_ID_INVALID</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga9fde6503edb9eaad50ecd3392ab9992a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>uint32_t(*</type>
      <name>MQTTGetCurrentTimeFunc_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>gae3bea55b0e49e5208b8c5709a5ea23aa</anchor>
      <arglist>)(void)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>MQTTEventCallback_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>gaa92f7854cdd6da0b50c3d7e9ded79a8c</anchor>
      <arglist>)(struct MQTTContext *pContext, struct MQTTPacketInfo *pPacketInfo, struct MQTTDeserializedInfo *pDeserializedInfo, enum MQTTSuccessFailReasonCode *pReasonCode, struct MQTTPropBuilder *sendPropsBuffer, struct MQTTPropBuilder *getPropsBuffer)</arglist>
    </member>
    <member kind="typedef">
      <type>bool(*</type>
      <name>MQTTStorePacketForRetransmit</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ae4ae1546af467967e2c996daeb78e0ba</anchor>
      <arglist>)(struct MQTTContext *pContext, uint16_t packetId, MQTTVec_t *pMqttVec)</arglist>
    </member>
    <member kind="typedef">
      <type>bool(*</type>
      <name>MQTTRetrievePacketForRetransmit</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a56514a9a33dbf82a5d33afedb54903b6</anchor>
      <arglist>)(struct MQTTContext *pContext, uint16_t packetId, uint8_t **pSerializedMqttVec, size_t *pSerializedMqttVecLen)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>MQTTClearPacketForRetransmit</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a864718ceee18ff04e9c92fe9825d601b</anchor>
      <arglist>)(struct MQTTContext *pContext, uint16_t packetId)</arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTConnectionStatus_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga9f84d003695205cf10a7bd0bafb3dbf6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTNotConnected</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga9f84d003695205cf10a7bd0bafb3dbf6a0320177ebf1f1b2e24646b44702cec69</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTConnected</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga9f84d003695205cf10a7bd0bafb3dbf6a82c8f64d976734e5632e5257bc429ef5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTDisconnectPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga9f84d003695205cf10a7bd0bafb3dbf6a3c7e17f463f44d8f7ce50475b129ac24</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTPublishState_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga0480de7552eedd739a26a23fa8e6fd94</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStateNull</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a8349567b7a9efb3913a64a8f4f6fe5c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPublishSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a896b1507647b504c9208580e4cde26ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubAckSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a65f6f7b343a30fc0558e3aeeb8c97f35</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubRecSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a11e2319a2b25b82121471743d39761e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubRelSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a5d2ee2709c6dc7a1eb8b9c40f318909b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubCompSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a7d88904d550b502b4424a41aa4205e56</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubAckPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94ab086c55acf106cdc8d420f90899b6803</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubRecPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a1bea59454700be9b683b7eb8aaf6bb4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubRelPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a695431cde1dc9dc5a2dcbd10eba49df2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubCompPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a3281a28d1829d954b596f091b547b627</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPublishDone</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94ad07733793a235ef9a6a04d16637cd7dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTPubAckType_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga8c1bee959b3ed5fab2a2688dd72bf237</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPuback</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga8c1bee959b3ed5fab2a2688dd72bf237a53d5939c680962f37c15ee87ffd63d0f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubrec</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga8c1bee959b3ed5fab2a2688dd72bf237a8c98d5d1a68dda33d9039009ab4ef053</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubrel</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga8c1bee959b3ed5fab2a2688dd72bf237af2d737088a231c88e7603acfdbc4fc8c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubcomp</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga8c1bee959b3ed5fab2a2688dd72bf237a910c34311ad6a2341afc04839e1c13bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTSubAckStatus_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga48dabc1579e3c0ac6058ce9068054611</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSubAckSuccessQos0</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga48dabc1579e3c0ac6058ce9068054611abcc3040d7d53025baee3542c40758abb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSubAckSuccessQos1</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga48dabc1579e3c0ac6058ce9068054611ab180361a6da712c8144d8c499537787d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSubAckSuccessQos2</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga48dabc1579e3c0ac6058ce9068054611a877b2afbc6ec7d9ab57d4862caadf4f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSubAckFailure</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga48dabc1579e3c0ac6058ce9068054611aeb83b20da8eda934cde6b92db225a808</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Init</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ae8444f3a85535e62cdb1ae9c192677d6</anchor>
      <arglist>(MQTTContext_t *pContext, const TransportInterface_t *pTransportInterface, MQTTGetCurrentTimeFunc_t getTimeFunction, MQTTEventCallback_t userCallback, const MQTTFixedBuffer_t *pNetworkBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_InitStatefulQoS</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ab60a5273df6903bba29e1eb0ea3b83aa</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTPubAckInfo_t *pOutgoingPublishRecords, size_t outgoingPublishCount, MQTTPubAckInfo_t *pIncomingPublishRecords, size_t incomingPublishCount, uint8_t *pBuffer, size_t bufferLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_InitRetransmits</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>af2d6f94bf234a888541919195002a13f</anchor>
      <arglist>(MQTTContext_t *pContext, MQTTStorePacketForRetransmit storeFunction, MQTTRetrievePacketForRetransmit retrieveFunction, MQTTClearPacketForRetransmit clearFunction)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_CheckConnectStatus</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ab42f3cc5a0681373e4ee973df062bbcd</anchor>
      <arglist>(const MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Connect</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ae8209f46a683fffd5634b83c3bc2e128</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTConnectInfo_t *pConnectInfo, const MQTTPublishInfo_t *pWillInfo, uint32_t timeoutMs, bool *pSessionPresent, const MQTTPropBuilder_t *pPropertyBuilder, const MQTTPropBuilder_t *pWillPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Subscribe</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ac038c272d04880c46e75406ace568b77</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, uint16_t packetId, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Publish</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>af495ad1fb62be67b92be65c0b9ed0050</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTPublishInfo_t *pPublishInfo, uint16_t packetId, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_CancelCallback</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a31b74c34cd295b98ed5f5b4c15ed4a8b</anchor>
      <arglist>(const MQTTContext_t *pContext, uint16_t packetId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Ping</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a66eced0c62ace790354ae3de40fc0959</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Unsubscribe</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a815ff2a751eb8ac3bb4f7ea4f8420154</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, uint16_t packetId, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_Disconnect</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ac5c0fb336de2130f781cd05ca83cee2f</anchor>
      <arglist>(MQTTContext_t *pContext, const MQTTPropBuilder_t *pPropertyBuilder, MQTTSuccessFailReasonCode_t reasonCode)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ProcessLoop</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ab95d3d6b3eed98a6184fb2018c5b55d7</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ReceiveLoop</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>aeb7c37284fcf6f68eb577427a6763fc6</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>uint16_t</type>
      <name>MQTT_GetPacketId</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a00e1a3eba2c21899a6b4312c7d65d090</anchor>
      <arglist>(MQTTContext_t *pContext)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_MatchTopic</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a633409812b18547365ec9b853069021b</anchor>
      <arglist>(const char *pTopicName, const uint16_t topicNameLength, const char *pTopicFilter, const uint16_t topicFilterLength, bool *pIsMatch)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetSubAckStatusCodes</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ac43449e06856c6703cda73359c222bd2</anchor>
      <arglist>(const MQTTPacketInfo_t *pSubackPacket, uint8_t **pPayloadStart, size_t *pPayloadSize)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>MQTT_Status_strerror</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a05d9facfce89c5f9edef09ca13717f50</anchor>
      <arglist>(MQTTStatus_t status)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>MQTT_GetBytesInMQTTVec</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a4d6610604dc1ca49dd24888019d4445e</anchor>
      <arglist>(const MQTTVec_t *pVec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>MQTT_SerializeMQTTVec</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>ab65e1ed5db559aa7d9158e9311048b7e</anchor>
      <arglist>(uint8_t *pAllocatedMem, const MQTTVec_t *pVec)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_PropertyBuilder_Init</name>
      <anchorfile>core__mqtt_8h.html</anchorfile>
      <anchor>a91ff4ad8264c8fbb8a29f8a26f31773d</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint8_t *buffer, size_t length)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>core_mqtt_config_defaults.h</name>
    <path>source/include/</path>
    <filename>core__mqtt__config__defaults_8h.html</filename>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_DO_NOT_USE_CUSTOM_CONFIG</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>abd12bb401eecf3f6694447ea3b1c886d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUB_UNSUB_MAX_VECTORS</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga928ea0bff12ebf9cf9fa9dfe5cafebbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_MAX_CONNACK_RECEIVE_RETRY_COUNT</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>a8ca6c96436d5e7c2c8a7933fb28a5c87</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PINGRESP_TIMEOUT_MS</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>afa825fddb52da7df88fb56d2befcd2fa</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PACKET_TX_TIMEOUT_MS</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>a9b3c7c33badcafec477a205d916424bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>PACKET_RX_TIMEOUT_MS</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>a46ef647d5a8315f626dc17d62e264aed</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_RECV_POLLING_TIMEOUT_MS</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>a43dc9a67427d9e420a65955eea0e2671</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SEND_TIMEOUT_MS</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>ac262cab68c4c713ebc2b91a2e4ab8b19</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LogError</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>a8d9dbaaa88129137a4c68ba0456a18b1</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LogWarn</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>a7da92048aaf0cbfcacde9539c98a0e05</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LogInfo</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>a00810b1cb9d2f25d25ce2d4d93815fba</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>LogDebug</name>
      <anchorfile>core__mqtt__config__defaults_8h.html</anchorfile>
      <anchor>af60e8ffc327d136e5d0d8441ed98c98d</anchor>
      <arglist>(message)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>core_mqtt_serializer.h</name>
    <path>source/include/</path>
    <filename>core__mqtt__serializer_8h.html</filename>
    <includes id="transport__interface_8h" name="transport_interface.h" local="yes" imported="no">transport_interface.h</includes>
    <includes id="core__mqtt__config__defaults_8h" name="core_mqtt_config_defaults.h" local="yes" imported="no">core_mqtt_config_defaults.h</includes>
    <class kind="struct">MQTTFixedBuffer_t</class>
    <class kind="struct">MQTTConnectInfo_t</class>
    <class kind="struct">MQTTSubscribeInfo_t</class>
    <class kind="struct">MQTTUserProperty_t</class>
    <class kind="struct">MQTTConnectProperties_t</class>
    <class kind="struct">MQTTReasonCodeInfo_t</class>
    <class kind="struct">MQTTPropBuilder_t</class>
    <class kind="struct">MQTTPublishInfo_t</class>
    <class kind="struct">MQTTPacketInfo_t</class>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_CONNECT</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga64a0515bda2ecc89e97595535e1cf0ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_CONNACK</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gab14f6c39c303eac1a76816edfde7feab</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBLISH</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga5b2d79c61f2591c8e5772f974826d4ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBACK</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga5f279d63de47a973b41b95f74f47a4f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBREC</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gafa2d8f28da39560f152076b99610e6a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBREL</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gaeaa2ceecffda50e2d22ccecf046083c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBCOMP</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga478ecbc98d2ca83d4ce7db33622b5c3b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_SUBSCRIBE</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga80cfef333e60d967ca927b2e5e665f18</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_SUBACK</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga307e0186aa17fdd0d6d181d3d2715766</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_UNSUBSCRIBE</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga4a94c954cfcea31c8fc3e2adf092b228</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_UNSUBACK</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga38bc8ed0b9a1581cf85cecdede7d1a64</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PINGREQ</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gacbe28c7d081275d1805c2142ff792185</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PINGRESP</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga285fc02048e2482794042fa98639e514</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_DISCONNECT</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gaed07155a3d6fa4b7624b9f36ed33ec6d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_ACK_PACKET_SIZE</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga26994fcfacb1cff892caa45ec31ca7c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUBSCRIBE_QOS1</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a1b87c5ebb6c1e6907a59710f1c57e4ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUBSCRIBE_QOS2</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a7dae72c27b63f7ea24f54213788ba8d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUBSCRIBE_NO_LOCAL</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ab358e7c90b003c8f5c287d26db40aada</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUBSCRIBE_RETAIN_AS_PUBLISHED</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a1d32653aa8131a0aee7ec1448c80f5ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUBSCRIBE_RETAIN_HANDLING1</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aa39d371721c6a63140973ac41f7c2dbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUBSCRIBE_RETAIN_HANDLING2</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a0f858dc57ebeb7b38fb83c1cf7717e5d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SESSION_EXPIRY_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ac1e2cffe4c4abe09c23ea66a4bcd9f47</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_RECEIVE_MAX_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a6ae36e05851d5fd3c952391f3f6a1734</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_MAX_PACKET_SIZE_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a0d799c7db9a9d9bbbbd6e817be580eef</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_TOPIC_ALIAS_MAX_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a63431aee8db6e48476d247c0264411ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_REQUEST_RESPONSE_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a6991e7e75f326c038b3beb7dd925f382</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_REQUEST_PROBLEM_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aef8b0a6a96ad3c176480d441063db81e</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_USER_PROPERTY_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aa26c39157ae4f8634e5c5c3ddc166ca5</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_AUTH_METHOD_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aa05a5e6ff5bfba0078d909eb2430412a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_AUTH_DATA_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a43cc9da2928edae0cf1ec742c1fdccc4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_WILL_DELAY_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>af876de4b31b67d3117eee587471caa0f</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PAYLOAD_FORMAT_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ad12f255cbee69a03575f0224d3590994</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_MSG_EXPIRY_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a258afeb4922eca2dcbede1a279169fc0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_CONTENT_TYPE_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a01a73ed2c10aabac0929ddd5ecdf9518</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_RESPONSE_TOPIC_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a6167d14717ce6bc82dd2a61ce5da12d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_CORRELATION_DATA_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>af3c47b888403ce143b688aedc833c876</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_TOPIC_ALIAS_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a95e3cc4784f4f3aa7c958c0d620d3524</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_MAX_QOS_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ab5747c9c29e3b2e46dd778814388e53a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_RETAIN_AVAILABLE_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a164ab1133408109f8f7e7fe3e166a73a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_ASSIGNED_CLIENT_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a00ec1a7b787f5f45195d11d4fcbda414</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_REASON_STRING_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a5b1aa2c05f1c5b0a088789710f2e757b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_WILDCARD_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ae955f226e3ad14476bbb889ff3cc1817</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUB_AVAILABLE_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a869b3061d024ea586ae2be19234e0ad2</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SHARED_SUB_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>abd69de026a9e13953f6dab4ba8a79456</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SERVER_KEEP_ALIVE_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a2fe7996d86eac3cd268aa568a779a880</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_RESPONSE_INFO_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a3a5c0c90103a9f2506a269d0268b75b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SERVER_REF_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a34fbb14daa5f401e5e33e3cc323bfa8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUBSCRIPTION_ID_ID</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aa35431ea47815c0ba43bb1a4ceda4051</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTStatus_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gaba7ec045874a1c3432f99173367f735c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSuccess</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca484e062cb4f3fccc1858dd25cfeee056</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTBadParameter</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa39030c93b0263b2699502a074f003b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTNoMemory</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735cab1be4db832a0468f024243bca151a8df</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSendFailed</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735cafd06b63fe9677fa2af06b0f4c7d4ad55</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTRecvFailed</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa14bc8aa4ad218702d782366945d43ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTBadResponse</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa5d7507e7664a14d63a8bc44b280093e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTServerRefused</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca25a3d1747e308e99daa805fe576f84b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTNoDataAvailable</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca676f21c0ddf297ae3ec874bc829aa957</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTIllegalState</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca67905d7a05f98faa557a73eb5092bd8f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStateCollision</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca8d05b92240dea6df08eab5a9e3799c11</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTKeepAliveTimeout</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca076ca8965e836a06e707a94adb26144f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTNeedMoreBytes</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa97df53014d919df5ecd54398f89f9b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStatusConnected</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa13a678a441c9ef6b88d6d8be8a64090</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStatusNotConnected</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca074273b04f70b93c1f20702096cac273</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStatusDisconnectPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca230baa3eaabf50e6b319f792a82bb863</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPublishStoreFailed</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca61a3e19715d8ee1ee330c9bbd4b2708a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPublishRetrieveFailed</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca274b61e8a2aea2cf551353c6d09a6eb2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTQoS_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gae308a5928d7f537379c29a894228093a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTQoS0</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggae308a5928d7f537379c29a894228093aaad51b23a1ae1417f96d8f343c788d1d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTQoS1</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggae308a5928d7f537379c29a894228093aa019d0b8a8cfadb6f98462b046bdacbb2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTQoS2</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggae308a5928d7f537379c29a894228093aa85e04ac0465cbdef6dd69ff71b2bbfbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTSuccessFailReasonCode_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga377edfeeb661cf054a3c7c598637450e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaec27e57d19af296e4bb5d8f90341fa3f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_NO_MATCHING_SUBSCRIBERS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea73b7865fc7a3270a164578ddb64ad8d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9a9d5864934d095d93f67161f81595d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea82e0d55e321db001275fee139d577191</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9c8370fe6dccaac60b16231547d5b6a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_TOPIC_NAME_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea8b17f877c0fdb9c9335eac60a9dbf22c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_PACKET_IDENTIFIER_IN_USE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eafc2774d718797370f5906e7b20539aac</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea05c1966ba2278d44e83b9ddc85837643</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_PAYLOAD_FORMAT_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea932a871c8527003e79f798057761bc55</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea8d1f682d9f527fab38d402de4db8733d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_NO_MATCHING_SUBSCRIBERS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab5230510b5f7cfd96c6ea2aa9a0b493f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea168512c03686ee4050ea35d0525ff6bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaa414c4457e344718201c7123cfc5f13d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea913d3524748b2a666d3b7f76de6c9c47</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_TOPIC_NAME_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea1772f8237e7aae6721795c723bbac7d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_PACKET_IDENTIFIER_IN_USE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea09b6d2b1f88e3c37ae65d6c18c875d73</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea21b7b0bd8de50f4fe60dabc4147a3635</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_PAYLOAD_FORMAT_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9ad53a4155b45aa8caef03161da252c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREL_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea160a49e8cdf0c3057c1b62b91140da81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREL_PACKET_IDENTIFIER_NOT_FOUND</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea2adc444a76d72ba1d82e49d2f76898f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBCOMP_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea30200593b5428a3fde25fff1bca99ccd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBCOMP_PACKET_IDENTIFIER_NOT_FOUND</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea3b21320822eb0c9523e2c6933a15a436</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaa05642f2d6bcee441d2110eb02806b14</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea3fcfe2653d5beddda324c84054b6f307</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_MALFORMED_PACKET</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eadfca66707d73f1f7a29873f2c560318c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_PROTOCOL_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab5523e76b618f2b5825a6f9903ca737c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9e2ee2a9c4cd76850c5c57ebe1b934c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_UNSUPPORTED_PROTOCOL_VERSION</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea19d7ac951f3bcca5cd180a38296d72d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_CLIENT_IDENTIFIER_NOT_VALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea2080f224b87c2c29bccc710c7db5bf82</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_BAD_USER_NAME_OR_PASSWORD</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eafc3f87d6a108fd648cb7c85850fa7cf5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea55c5e62fab7ed193a2a2e958828439e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_SERVER_UNAVAILABLE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea4af7f1f540e1a273935ad68b863049ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_SERVER_BUSY</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaf5f487d1e6f66ce57d72e6d4dbfe712d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_BANNED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eae3b5b13fbe11aa24e05eda01e5df3f6a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_BAD_AUTHENTICATION_METHOD</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaaa0caacb28142c9d425fd8bc3a916d97</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_TOPIC_NAME_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea273cba3efdf86e3fe73a2c8d977da2aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_PACKET_TOO_LARGE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea7b20c7314226847850f87c099f5ce259</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab5f6a48c02fc7a9472bdbadd2d09507e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_PAYLOAD_FORMAT_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea04ae6a169ed488fc07199e59e500aa36</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_RETAIN_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaad9d9fa043c9031989ca258ed76d92c1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_QOS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ead0dd365babab6299360409c9b8f5ec4b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_USE_ANOTHER_SERVER</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9603c89aa2e2043199b83ef04d21e300</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_SERVER_MOVED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaae65c001ed16cde6e73c90ae51a52e31</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_CONNECTION_RATE_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea18febf18ff0950ac7d75a1bf2e0beb4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_GRANTED_QOS0</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea691755049d5fc3165296ac233d907a4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_GRANTED_QOS1</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaaef376fb954f8b54ff99d86cb4d50c11</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_GRANTED_QOS2</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eae2263fb8bdb2b367a55baebd4d90a1a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaba8aba7d1f6dad09ed7078e33453ec50</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaff2be32d18beea90566c7fccb11db5ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea823864d4817117a7b918c759d96f53bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_TOPIC_FILTER_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea59a194884e3e1abccd33c2aaa11d8378</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_PACKET_IDENTIFIER_IN_USE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea5e8eedbc1c09584c2741fc5e3f086a81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaaeef90d33af2613da0a0967982ad9053</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_SHARED_SUBSCRIPTIONS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eae67171661c2dd9e03c10135e70a7b2b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea41a9e6abaa661b7fbf3c6dc0617afb0a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eae291e9ec840e39f3b970daf3f8447b38</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea34f4d0fe2dcef18f535f172c846f06e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_NO_SUBSCRIPTION_EXISTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea533c4cff4a264052cfdaaf7b8cfce0a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaedc0af01a1ebcd3c260f44aa71d82935</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea1fd2b23ad03605ee3f8f6acf9550f0c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eafdd2cd9e4261858d07236e91e67380c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_TOPIC_FILTER_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea3dc70aeec66055f198326693a55d1e9b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_PACKET_IDENTIFIER_IN_USE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea7a8d20d9fe656ce1bbb2cfb3ecf08db8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_NORMAL_DISCONNECTION</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea55edb84a47cdda9f150a12bfd2e38db1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_DISCONNECT_WITH_WILL_MESSAGE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaaa11f277027410058166f75e0d3dbacd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea836695bd488cd356386ec63e20728a7e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_MALFORMED_PACKET</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea228092ce6e3a800f8bb7a5ee49297fa0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_PROTOCOL_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea8a9d508be1ca7eba456b79b3249beff6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea26b9d9b87e78ae31feacbeec1fc68ce0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ead4542bb94fa87e1daa29ca5609d671fc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SERVER_BUSY</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab4cdb5cb419222a0e5ff587dcb5eb17f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SERVER_SHUTTING_DOWN</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab082c579f274ae698dcc3c91a896f8d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_BAD_AUTHENTICATION_METHOD</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ead4edae719818611fc3db6063ab4e4105</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_KEEP_ALIVE_TIMEOUT</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea56f178ce8bc66bebe20b5d414f795695</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SESSION_TAKEN_OVER</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea562bc2b776339a525922f14024cca3fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_TOPIC_FILTER_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea5e64bb43f132a39d0fe5af25a99ea420</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_TOPIC_NAME_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eabe648c943a525c291a2f4a1eee5315d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_RECEIVE_MAXIMUM_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea7f7163334d5377850cd658049fd4183b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_TOPIC_ALIAS_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaa1bbbe637efa97e740141a357507fb04</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_PACKET_TOO_LARGE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eadd81177a4addf111b27e1dfdcfc7f328</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_MESSAGE_RATE_TOO_HIGH</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaef7a88988105ebb7baaf9f5924b26897</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eafe62edd931be084a0a40a60039744f87</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_ADMINISTRATIVE_ACTION</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea4d2cc1ccbb197ebe3ced7718ae002237</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_PAYLOAD_FORMAT_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea06eaa2d01ace739d436800ec4cadf437</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_RETAIN_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab490ac58760a290b109929691931674d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_QOS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaa95ba7d7fc079d39632477a9776e467e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_USE_ANOTHER_SERVER</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea440082b1d151728ca496c1624f77ea4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SERVER_MOVED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea7b4ba5aa35ca01bc22012d2b2cfc3cd7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SHARED_SUBSCRIPTIONS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ead41f26fd3217575342fe35da3ec17d99</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_CONNECTION_RATE_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea4beedd8b2cdb30d03f0651d852fbbbd9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_MAXIMUM_CONNECT_TIME</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea3fdbd45bd2c7955b8ed3aa441c5e0dca</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea173f54ae8b2e495b94ae0431e96590ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea944e2976e661db8f7831cec36cdd731c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTRetainHandling_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga276a86010075cf64d522fe56cabee1e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>retainSendOnSub</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga276a86010075cf64d522fe56cabee1e3ad87d133aa73a39124fa12597b9d7c449</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>retainSendOnSubIfNotPresent</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga276a86010075cf64d522fe56cabee1e3a24a986f1b6e7f71f08756fc9e170743b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>retainDoNotSendonSub</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga276a86010075cf64d522fe56cabee1e3a83c31ac46bb92684ee74579b7088a8b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTSubscriptionType_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga92e39b92b76d439a183fc6f5e300195f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_TYPE_SUBSCRIBE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga92e39b92b76d439a183fc6f5e300195fafc8760ca08fcb6c2011be8660cf539d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_TYPE_UNSUBSCRIBE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga92e39b92b76d439a183fc6f5e300195fa91f5a06482f72290b846ffd16f0a4523</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetSubscribePacketSize</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ad8e7a3a434fcea85cf85fa88575fd0f5</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, const MQTTPropBuilder_t *pSubscribeProperties, size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeSubscribe</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a74805b873842db385d7d30a50f17c0e3</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, const MQTTPropBuilder_t *pSubscribeProperties, uint16_t packetId, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetUnsubscribePacketSize</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a21efe87938f8c79aed8fdf62db147129</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, const MQTTPropBuilder_t *pUnsubscribeProperties, size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeUnsubscribe</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a6dca7a2ccd47f0dcb908eb751be41065</anchor>
      <arglist>(const MQTTSubscribeInfo_t *pSubscriptionList, size_t subscriptionCount, const MQTTPropBuilder_t *pUnsubscribeProperties, uint16_t packetId, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializePublish</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aa87cc187e0040187ffbf2ea471be42b0</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, const MQTTPropBuilder_t *pPublishProperties, uint16_t packetId, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializePublishHeaderWithoutTopic</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a32de7fabeca85a4d360fa1dd06ff7cd0</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, size_t remainingLength, uint8_t *pBuffer, size_t *headerSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializePublishHeader</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a5d7548f456673d99c7e763389f2e654d</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, const MQTTPropBuilder_t *pPublishProperties, uint16_t packetId, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer, size_t *pHeaderSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeAck</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a11ea4ac5ea27e93121288e463ca34ee6</anchor>
      <arglist>(const MQTTFixedBuffer_t *pFixedBuffer, uint8_t packetType, uint16_t packetId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetPingreqPacketSize</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a015562f30e220d2534f773bfa45a5cfe</anchor>
      <arglist>(size_t *pPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializePingreq</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>af3b3e40858fd984c871511e02a61e15d</anchor>
      <arglist>(const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_DeserializePublish</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a491ba3d7ace4451bd808779779c540b5</anchor>
      <arglist>(const MQTTPacketInfo_t *pIncomingPacket, uint16_t *pPacketId, MQTTPublishInfo_t *pPublishInfo, MQTTPropBuilder_t *propBuffer, uint32_t maxPacketSize, uint16_t topicAliasMax)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetIncomingPacketTypeAndLength</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a98cdda86f86a0a1888745a584199e930</anchor>
      <arglist>(TransportRecv_t readFunc, NetworkContext_t *pNetworkContext, MQTTPacketInfo_t *pIncomingPacket)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ProcessIncomingPacketTypeAndLength</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a94fd3f746074b3f6e16ae6b23dad9a28</anchor>
      <arglist>(const uint8_t *pBuffer, const size_t *pIndex, MQTTPacketInfo_t *pIncomingPacket)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_UpdateDuplicatePublishFlag</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a269f0b0e193a7a10a6e392b88768ae94</anchor>
      <arglist>(uint8_t *pHeader, bool set)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetConnectPacketSize</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aa01f6786a41772dfd0dc4fb7592164be</anchor>
      <arglist>(const MQTTConnectInfo_t *pConnectInfo, const MQTTPublishInfo_t *pWillInfo, const MQTTPropBuilder_t *pConnectProperties, const MQTTPropBuilder_t *pWillProperties, size_t *pRemainingLength, size_t *pPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeConnect</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>acc6faa0c49ba94e476957f0dd5b57019</anchor>
      <arglist>(const MQTTConnectInfo_t *pConnectInfo, const MQTTPublishInfo_t *pWillInfo, const MQTTPropBuilder_t *pConnectProperties, const MQTTPropBuilder_t *pWillProperties, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidatePublishParams</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ae349b08ac962a464a0f1491748765bd0</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, uint8_t retainAvailable, uint8_t maxQos, uint16_t topicAlias, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetPublishPacketSize</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a6a169c57c8e56af08fe9862101cf551b</anchor>
      <arglist>(const MQTTPublishInfo_t *pPublishInfo, const MQTTPropBuilder_t *pPublishProperties, size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_DeserializeAck</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a4190e4afadc1fb60d3a300b6c59c84d2</anchor>
      <arglist>(const MQTTPacketInfo_t *pIncomingPacket, uint16_t *pPacketId, bool *pSessionPresent, MQTTReasonCodeInfo_t *pReasonCode, bool requestProblem, uint32_t maxPacketSize, MQTTPropBuilder_t *propBuffer, MQTTConnectProperties_t *pConnectProperties)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetAckPacketSize</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a4a2afce41b84962ce709dc23ab889b31</anchor>
      <arglist>(size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize, size_t ackPropertyLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_GetDisconnectPacketSize</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a85c60cc9ad2a5c95a25c582fd67a4ba6</anchor>
      <arglist>(const MQTTPropBuilder_t *pDisconnectProperties, size_t *pRemainingLength, size_t *pPacketSize, uint32_t maxPacketSize, MQTTSuccessFailReasonCode_t reasonCode)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_SerializeDisconnect</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a466b8d5dadd468bddcee3c5d706e0da3</anchor>
      <arglist>(const MQTTPropBuilder_t *pDisconnectProperties, MQTTSuccessFailReasonCode_t reasonCode, size_t remainingLength, const MQTTFixedBuffer_t *pFixedBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_DeserializeDisconnect</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a1f42b448bfca04d5604f03d556d64a5a</anchor>
      <arglist>(const MQTTPacketInfo_t *pPacket, uint32_t maxPacketSize, MQTTReasonCodeInfo_t *pDisconnectInfo, MQTTPropBuilder_t *propBuffer)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>updateContextWithConnectProps</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a5c5802e11c75b3c0e3e979865cd0421b</anchor>
      <arglist>(const MQTTPropBuilder_t *pPropBuilder, MQTTConnectProperties_t *pConnectProperties)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_SubscribeId</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aeb58017c48bafc412e9c36a360530c38</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, size_t subscriptionId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_UserProp</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a0dbffa853c25206a99f87a44a5280438</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const MQTTUserProperty_t *userProperty)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_SessionExpiry</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a17c03872f40100ab2d56c1cb829cba4f</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint32_t sessionExpiry)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnReceiveMax</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>af41d5e87bb6078933ede99befcbba376</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint16_t receiveMax)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnMaxPacketSize</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a52738c7f6547d1f86d850dd88f56883a</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint32_t maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnTopicAliasMax</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ab9715f70ab34e14ffdb794a62b58a587</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint16_t topicAliasMax)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnRequestRespInfo</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a60c171bbba71f3b6832fd9ca2b64370d</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, bool requestResponseInfo)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnRequestProbInfo</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a2e76345b488e8d87ee406eda22f5956d</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, bool requestProblemInfo)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnAuthMethod</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>adc076cb22e3cc099161bfa948e8e0bc0</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *authMethod, uint16_t authMethodLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ConnAuthData</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a342137a83c82f69ae526a376db45a8b9</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *authData, uint16_t authDataLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubPayloadFormat</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a5e2fa191757644d2559c90001b8b8f83</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, bool payloadFormat)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubMessageExpiry</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a532da63e245d0c8cef901d15cfd815f0</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint32_t messageExpiry)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_WillDelayInterval</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a65561aea3cd62f3e40116aa756ce961c</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint32_t willDelayInterval)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubTopicAlias</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ac3001a2ec87f85ef43a3e4a108f509b0</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, uint16_t topicAlias)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubResponseTopic</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ab8222e233b9495492a8997dde96301df</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *responseTopic, uint16_t responseTopicLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubCorrelationData</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a74a0357632bbcc2d8cb312a792da2460</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const void *pCorrelationData, uint16_t correlationLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_PubContentType</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>af097e4d01e29eed061cc8e87d9a60a73</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *contentType, uint16_t contentTypeLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropAdd_ReasonString</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ae8c80019e58eb6d2d4771e535395b061</anchor>
      <arglist>(MQTTPropBuilder_t *pPropertyBuilder, const char *pReasonString, uint16_t reasonStringLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidatePublishProperties</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a162d32c54e27ce976c2a5bec5deed3dc</anchor>
      <arglist>(uint16_t serverTopicAliasMax, const MQTTPropBuilder_t *propBuilder, uint16_t *topicAlias)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidateSubscribeProperties</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a976feef048610e20a029cb695c5ae9a4</anchor>
      <arglist>(uint8_t isSubscriptionIdAvailable, const MQTTPropBuilder_t *propBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidateDisconnectProperties</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a5bfe18401ff9848c18729640f7cef6e7</anchor>
      <arglist>(uint32_t connectSessionExpiry, const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidateWillProperties</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a7e1952aacd4318c304c79d896835bd06</anchor>
      <arglist>(const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidateUnsubscribeProperties</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aefeb3ff88a39059bd8a598bb63483992</anchor>
      <arglist>(const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_ValidatePublishAckProperties</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aec02145ce3dc1b8745b5ad96de5820cf</anchor>
      <arglist>(const MQTTPropBuilder_t *pPropertyBuilder)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubTopicAlias</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a817d532f7d750b70c9bada752afabc26</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint16_t *topicAlias)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubPayloadFormatIndicator</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>afd52b8d51fc124c7dda32d07a2428fd0</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *payloadFormat)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubResponseTopic</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a5c9008e6435eb5faaf7c087815f061be</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **responseTopic, uint16_t *responseTopicLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubCorrelationData</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ab8bc55e18c8ba9276616e24169f2d894</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const void **correlationData, uint16_t *correlationLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubMessageExpiryInterval</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a323ca6ef83367282096e884de3ae285d</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint32_t *msgExpiryInterval)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubContentType</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a23676dbde05e455b002b9ef21a8691b4</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pContentType, uint16_t *contentTypeLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_PubSubscriptionId</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a1013d87cc1a5f898a14ad1cf06a6c7a6</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, size_t *subscriptionId)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_UserProp</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ac6a916e2e668862bcaac135645b857e6</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pUserPropKey, uint16_t *pUserPropKeyLen, const char **pUserPropVal, uint16_t *pUserPropValLen)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ReasonString</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a77558c7d5b771c65d3242a4525cf20cb</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pReasonString, uint16_t *reasonStringLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ServerRef</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a3019ea143094dec3cd98d1b788fc4fff</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pServerRef, uint16_t *serverRefLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_SessionExpiry</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a7b80a54a7b7291e258363b0130f1e8b5</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint32_t *sessionExpiry)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnTopicAliasMax</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>acdc71064f593afae08d5e0a564db19ac</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint16_t *topicAliasMax)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnReceiveMax</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a4d5cec94c39adbac6ee6e49aac681548</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint16_t *receiveMax)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnMaxQos</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a04f5bfb96aed401a48b971cbf6e7c527</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *maxQos)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnRetainAvailable</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aec29acd9357c65745d4fa9fe59efc04e</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *retainAvailable)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnMaxPacketSize</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>aa520c8b6563ab09ca5a1bbfcaea1d253</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint32_t *maxPacketSize)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnClientId</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>ade3e1275070efde94888f671657433ce</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pClientId, uint16_t *clientIdLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnWildcard</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a66aa626c026903d4daf8fa83746af3dd</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *isWildCardAvailable)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnSubId</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a0ed6f3592dfb8896a5c0d969b0526607</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *isSubIdAvailable)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnSharedSubAvailable</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a852214ef36e3db3e0dab33a84febc79a</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *isSharedSubAvailable)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnServerKeepAlive</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a46b5807775fff0b5b13b00170cd731bf</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint16_t *serverKeepAlive)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnResponseInfo</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a971b7784b761ef9ff30f9365c3fecd27</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pResponseInfo, uint16_t *responseInfoLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnAuthMethod</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>adb48baa731b7f19f72446b87f305c8ec</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pAuthMethod, uint16_t *authMethodLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTTPropGet_ConnAuthData</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>a7e4cf4843e10e576e7b2547ba8518ef7</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, const char **pAuthData, uint16_t *authDataLength)</arglist>
    </member>
    <member kind="function">
      <type>MQTTStatus_t</type>
      <name>MQTT_IncomingGetNextProp</name>
      <anchorfile>core__mqtt__serializer_8h.html</anchorfile>
      <anchor>af348ec2a8a3a331fd6c04a4b7cf52c81</anchor>
      <arglist>(MQTTPropBuilder_t *propBuffer, uint8_t *propertyId)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>core_mqtt_state.h</name>
    <path>source/include/</path>
    <filename>core__mqtt__state_8h.html</filename>
    <includes id="core__mqtt_8h" name="core_mqtt.h" local="yes" imported="no">core_mqtt.h</includes>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_STATE_CURSOR_INITIALIZER</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga666ad78e7eaaffa51f5cab96201a9476</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>size_t</type>
      <name>MQTTStateCursor_t</name>
      <anchorfile>group__mqtt__basic__types.html</anchorfile>
      <anchor>ga2ca7d486d83fe555953a8c7876ee0d6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>uint16_t</type>
      <name>MQTT_PublishToResend</name>
      <anchorfile>core__mqtt__state_8h.html</anchorfile>
      <anchor>a44b3cf50dc477a9f97413a9238a961f6</anchor>
      <arglist>(const MQTTContext_t *pMqttContext, MQTTStateCursor_t *pCursor)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>core_mqtt_utils.h</name>
    <path>source/include/</path>
    <filename>core__mqtt__utils_8h.html</filename>
    <member kind="define">
      <type>#define</type>
      <name>UINT8_SET_BIT</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>af259c91b3075c24df53fa3ffe516b208</anchor>
      <arglist>(x, position)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT8_CHECK_BIT</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>a07cc5f3f934e1ebf8011a6c15a667206</anchor>
      <arglist>(x, position)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT32_SET_BIT</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>aa7efbea5e18e04f3ccedeb0f31342b22</anchor>
      <arglist>(x, position)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT32_CHECK_BIT</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>ad1efde8b09ebf3852dea527ac4a2f538</anchor>
      <arglist>(x, position)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT16_HIGH_BYTE</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>a24aab781ef139dd38be534ee137ea2f9</anchor>
      <arglist>(x)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT16_LOW_BYTE</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>af2ae35b27e0140a77238cd175508cb4e</anchor>
      <arglist>(x)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT16_DECODE</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>acc849aa739edff3ec532219a3860a3a0</anchor>
      <arglist>(ptr)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT32_DECODE</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>a17ed1ce0de61ab9f36bbcbe66486245c</anchor>
      <arglist>(ptr)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT32_GET_BYTE</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>ab1ce24ce5c7e5815c7a3809572ed77c7</anchor>
      <arglist>(x, byteNumber)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>UINT8_CLEAR_BIT</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>a549d24726d8ff1b4b32a6cb48654ad90</anchor>
      <arglist>(x, position)</arglist>
    </member>
    <member kind="function">
      <type>uint8_t *</type>
      <name>encodeVariableLength</name>
      <anchorfile>core__mqtt__utils_8h.html</anchorfile>
      <anchor>ad8f2f64d11941dbc439906c174bcc844</anchor>
      <arglist>(uint8_t *pDestination, size_t length)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>transport_interface.h</name>
    <path>source/interface/</path>
    <filename>transport__interface_8h.html</filename>
    <class kind="struct">TransportOutVector_t</class>
    <class kind="struct">TransportInterface_t</class>
    <member kind="typedef">
      <type>struct NetworkContext</type>
      <name>NetworkContext_t</name>
      <anchorfile>group__mqtt__struct__types.html</anchorfile>
      <anchor>ga7769e434e7811caed8cd6fd7f9ec26ec</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int32_t(*</type>
      <name>TransportRecv_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>ga227df31d6daf07e5d833537c12130167</anchor>
      <arglist>)(NetworkContext_t *pNetworkContext, void *pBuffer, size_t bytesToRecv)</arglist>
    </member>
    <member kind="typedef">
      <type>int32_t(*</type>
      <name>TransportSend_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>ga2a39853ff952edd715ab07b33ab2a7c5</anchor>
      <arglist>)(NetworkContext_t *pNetworkContext, const void *pBuffer, size_t bytesToSend)</arglist>
    </member>
    <member kind="typedef">
      <type>int32_t(*</type>
      <name>TransportWritev_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>ga47e779557b0c2db95949ef9526861dfb</anchor>
      <arglist>)(NetworkContext_t *pNetworkContext, TransportOutVector_t *pIoVec, size_t ioVecCount)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTConnectInfo_t</name>
    <filename>struct_m_q_t_t_connect_info__t.html</filename>
    <member kind="variable">
      <type>bool</type>
      <name>cleanSession</name>
      <anchorfile>struct_m_q_t_t_connect_info__t.html</anchorfile>
      <anchor>a606e7765c4f2215fb2bf630f6eb9ff6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>keepAliveSeconds</name>
      <anchorfile>struct_m_q_t_t_connect_info__t.html</anchorfile>
      <anchor>a7d05d53261732ebdfbb9ee665a347591</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>pClientIdentifier</name>
      <anchorfile>struct_m_q_t_t_connect_info__t.html</anchorfile>
      <anchor>a010f8f6993cbf8899648d5c515ff7884</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>clientIdentifierLength</name>
      <anchorfile>struct_m_q_t_t_connect_info__t.html</anchorfile>
      <anchor>a8077ef36ab318f3d35bee6f098fa54d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>pUserName</name>
      <anchorfile>struct_m_q_t_t_connect_info__t.html</anchorfile>
      <anchor>a1118d7d3251a11445318557280db53b4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>userNameLength</name>
      <anchorfile>struct_m_q_t_t_connect_info__t.html</anchorfile>
      <anchor>a7165be3bb06d4527ab4eb773b50e05e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>pPassword</name>
      <anchorfile>struct_m_q_t_t_connect_info__t.html</anchorfile>
      <anchor>acec6c79a11d2f0f130802393f34d2b5e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>passwordLength</name>
      <anchorfile>struct_m_q_t_t_connect_info__t.html</anchorfile>
      <anchor>a818c4e212a12020a4109eb890ec96383</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTConnectProperties_t</name>
    <filename>struct_m_q_t_t_connect_properties__t.html</filename>
    <member kind="variable">
      <type>uint32_t</type>
      <name>sessionExpiry</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a0af8ab802ad0f79cef1bcb128916727f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>receiveMax</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a41ef86dd266204c0ecdd8a04039fc522</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>maxPacketSize</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a9d005aa91297636ae3ba2ab1a873f378</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>topicAliasMax</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a7588b9a45dc75c8d61a6bb87547d92d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>requestResponseInfo</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a14e792dfc9cd2ada1c2eeb05b28b0e34</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>requestProblemInfo</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a65189b2dadd6c301eee0c337192f4b2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>serverReceiveMax</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a4b6bf89da0a46b739630921629652664</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>serverMaxQos</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>af2d8508b9097c92430cc856cc1b99d9a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>retainAvailable</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a3f43762670e814c6ba159caeb8d9a120</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>serverMaxPacketSize</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a75b14385c9ae1f4e289b8b7ed60b35b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>pClientIdentifier</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a2f002590061be7cd476399b9405cce0a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>clientIdLength</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>aa0390e2678fa9bbc4d013372b112b2e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>serverTopicAliasMax</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a6803a2beb89dfde0a240c65c3aa50692</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>isWildcardAvaiable</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a257424774266028d8b01a123aaa5ba89</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>isSubscriptionIdAvailable</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>ae7c31c1972078226a1feb8342e5c546d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>isSharedAvailable</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a3e0fcc2cb17930c719ee772fc2a345f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>serverKeepAlive</name>
      <anchorfile>struct_m_q_t_t_connect_properties__t.html</anchorfile>
      <anchor>a86be39e97e280f66dbd96eac2d3d5b3c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTContext_t</name>
    <filename>struct_m_q_t_t_context__t.html</filename>
    <member kind="variable">
      <type>MQTTPubAckInfo_t *</type>
      <name>outgoingPublishRecords</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a4ea1e37e0e81f010fbf84365ac2ef6de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTPubAckInfo_t *</type>
      <name>incomingPublishRecords</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>afc147663a5933de81212fa77057f0a4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>outgoingPublishRecordMaxCount</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a2851073e252d1e744596272ef13dd14a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>incomingPublishRecordMaxCount</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>aa33ed2e10380a854629f1386d0323ea8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TransportInterface_t</type>
      <name>transportInterface</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a87ab9d61e7711325c2c85ce3ce63386a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTFixedBuffer_t</type>
      <name>networkBuffer</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a231c5576a6ce389317a3f00f95628276</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTPropBuilder_t</type>
      <name>ackPropsBuffer</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>acc6db180acbc7cc7b1ef7c2f5f553631</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>nextPacketId</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>af47ed55ad7e9bb112324f5f209b70534</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTConnectionStatus_t</type>
      <name>connectStatus</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a4e38c4dc77e7751a0ad8730a41bee47f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTGetCurrentTimeFunc_t</type>
      <name>getTime</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>aabe1d302a16771292151013e8e30c582</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTEventCallback_t</type>
      <name>appCallback</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a73bd9259db9c3a9b84518cbf928ed91f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>lastPacketTxTime</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a01acf90953e830ba3e7f44182cb1d482</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>lastPacketRxTime</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a7111ef16e4a4e75a72861f6f3ea8a7c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>controlPacketSent</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>af9724f2426132e3ce96a03892902ef89</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>index</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a41b7735cd0746563483b72e17cf103aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>keepAliveIntervalSec</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>afd6071827ef48b230212a5725c2075be</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>pingReqSendTimeMs</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>acca3efa4146d85f7e874c7c326e23556</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>waitingForPingResp</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>ac7073f43645f7b7c0c5b7763980004bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTConnectProperties_t</type>
      <name>connectProperties</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a047ae100fbd9c7db279ddfb247d634da</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTReasonCodeInfo_t *</type>
      <name>pDisconnectInfo</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>ab41358f43de159a3df911b7e19903833</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTStorePacketForRetransmit</type>
      <name>storeFunction</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>ac205fc33078b0cfa0dfc62807bd9574f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTRetrievePacketForRetransmit</type>
      <name>retrieveFunction</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a270e9e595ecd60948c960d059f8fe718</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTClearPacketForRetransmit</type>
      <name>clearFunction</name>
      <anchorfile>struct_m_q_t_t_context__t.html</anchorfile>
      <anchor>a36e3d500e6efa050d6e666aefa3ff577</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTDeserializedInfo_t</name>
    <filename>struct_m_q_t_t_deserialized_info__t.html</filename>
    <member kind="variable">
      <type>uint16_t</type>
      <name>packetIdentifier</name>
      <anchorfile>struct_m_q_t_t_deserialized_info__t.html</anchorfile>
      <anchor>af4df2a9926a4a68059195daa712d9b84</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTPublishInfo_t *</type>
      <name>pPublishInfo</name>
      <anchorfile>struct_m_q_t_t_deserialized_info__t.html</anchorfile>
      <anchor>ac347273fae1e92b9cbeda1714066c1de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTStatus_t</type>
      <name>deserializationResult</name>
      <anchorfile>struct_m_q_t_t_deserialized_info__t.html</anchorfile>
      <anchor>a7df1b7b60404c9f1604fec0081d2625d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTReasonCodeInfo_t *</type>
      <name>pReasonCode</name>
      <anchorfile>struct_m_q_t_t_deserialized_info__t.html</anchorfile>
      <anchor>aa6e6ca63ae46b306dd3d304f6f564c29</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTFixedBuffer_t</name>
    <filename>struct_m_q_t_t_fixed_buffer__t.html</filename>
    <member kind="variable">
      <type>uint8_t *</type>
      <name>pBuffer</name>
      <anchorfile>struct_m_q_t_t_fixed_buffer__t.html</anchorfile>
      <anchor>acea147448e044870fb36b7fa2347dbd6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>size</name>
      <anchorfile>struct_m_q_t_t_fixed_buffer__t.html</anchorfile>
      <anchor>a0b0b6a93cc62751ebeb03095d5431636</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTPacketInfo_t</name>
    <filename>struct_m_q_t_t_packet_info__t.html</filename>
    <member kind="variable">
      <type>uint8_t</type>
      <name>type</name>
      <anchorfile>struct_m_q_t_t_packet_info__t.html</anchorfile>
      <anchor>a7fef40548c1aa0f0e7f812a6a7243758</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t *</type>
      <name>pRemainingData</name>
      <anchorfile>struct_m_q_t_t_packet_info__t.html</anchorfile>
      <anchor>ac66cedff052bc844ec9b296387df60bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>remainingLength</name>
      <anchorfile>struct_m_q_t_t_packet_info__t.html</anchorfile>
      <anchor>a7c85becf08de0ec9776dd4be1fcc4bf8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>headerLength</name>
      <anchorfile>struct_m_q_t_t_packet_info__t.html</anchorfile>
      <anchor>aa7de1631ed8e08410942d36a72db558a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTPropBuilder_t</name>
    <filename>struct_m_q_t_t_prop_builder__t.html</filename>
    <member kind="variable">
      <type>uint8_t *</type>
      <name>pBuffer</name>
      <anchorfile>struct_m_q_t_t_prop_builder__t.html</anchorfile>
      <anchor>a7b2fa2be2e3aa4e99fbdc4a797891a34</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>bufferLength</name>
      <anchorfile>struct_m_q_t_t_prop_builder__t.html</anchorfile>
      <anchor>a93627d10e651b2d47a1ea18a9c510a16</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>currentIndex</name>
      <anchorfile>struct_m_q_t_t_prop_builder__t.html</anchorfile>
      <anchor>a5f271ebc88dcae13add5df2ec78a2e0e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>fieldSet</name>
      <anchorfile>struct_m_q_t_t_prop_builder__t.html</anchorfile>
      <anchor>a6cc81cd8ebc111cdfbb2c736482d278f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTPubAckInfo_t</name>
    <filename>struct_m_q_t_t_pub_ack_info__t.html</filename>
    <member kind="variable">
      <type>uint16_t</type>
      <name>packetId</name>
      <anchorfile>struct_m_q_t_t_pub_ack_info__t.html</anchorfile>
      <anchor>a66cef7b43af5d7fdd33b5d2dc766b2d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTQoS_t</type>
      <name>qos</name>
      <anchorfile>struct_m_q_t_t_pub_ack_info__t.html</anchorfile>
      <anchor>a086fcd48ef0b787697526a95c861e8a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTPublishState_t</type>
      <name>publishState</name>
      <anchorfile>struct_m_q_t_t_pub_ack_info__t.html</anchorfile>
      <anchor>a61314203ef87a231c6489c68b579de34</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTPublishInfo_t</name>
    <filename>struct_m_q_t_t_publish_info__t.html</filename>
    <member kind="variable">
      <type>MQTTQoS_t</type>
      <name>qos</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a178224d02b4acdec7e08e88de0e4b399</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>retain</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a343b0af89c46a900db4aa5c775a0975a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>dup</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>aa1c8954e83bfa678d1ff5429679d4e89</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>pTopicName</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>aa80e8ca282d01630f878ad0afe81d7a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>topicNameLength</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a6161c792d20cc7cf8284c1b71ea1145f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const void *</type>
      <name>pPayload</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>afc28299f4f625f5e674bb61b42f03380</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>payloadLength</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a7997964e11571f35f0c3b729db0f760f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>propertyLength</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>aaf01d089ad9db1b041015715071942f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>willDelay</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>ab616f292ff5f0680760376667cc9d0b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>payloadFormat</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a36aa4c2dd74c5e806eb93b4b1e444670</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>topicAlias</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a22ada2831f5c7c0b1e88038c55e7e94d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>msgExpiryInterval</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>aa40126dd9485324e4f39fae4759fe2ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>msgExpiryPresent</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a73b90d507e64c0c9153b8456b4261d45</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>contentTypeLength</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a80c4ca96519b60918c07a7fc0e72b9d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>pContentType</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>aef934608b3281ffdad77ec858f8208ba</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>responseTopicLength</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>ad0968e1b42ad90b6a61d51c5d2b2200d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>pResponseTopic</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a5dfc33e889890eb3b45a685d63938b8c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>correlationLength</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>a8a2892bc0db01734dbc46a53954b64f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const void *</type>
      <name>pCorrelationData</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>ae8348512878ce2523b6a5c7beb0a5117</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>subscriptionId</name>
      <anchorfile>struct_m_q_t_t_publish_info__t.html</anchorfile>
      <anchor>afac0cceb753c6e0d76cc6bca37cbb421</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTReasonCodeInfo_t</name>
    <filename>struct_m_q_t_t_reason_code_info__t.html</filename>
    <member kind="variable">
      <type>const uint8_t *</type>
      <name>reasonCode</name>
      <anchorfile>struct_m_q_t_t_reason_code_info__t.html</anchorfile>
      <anchor>a2b61cf1ee4caa1865a54d47da2e76477</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>reasonCodeLength</name>
      <anchorfile>struct_m_q_t_t_reason_code_info__t.html</anchorfile>
      <anchor>a1476b796abb5bd5acf218a50c3ff53ac</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTSubscribeInfo_t</name>
    <filename>struct_m_q_t_t_subscribe_info__t.html</filename>
    <member kind="variable">
      <type>MQTTQoS_t</type>
      <name>qos</name>
      <anchorfile>struct_m_q_t_t_subscribe_info__t.html</anchorfile>
      <anchor>a64cf2e423f60cfec122eeaef80c0fd86</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>pTopicFilter</name>
      <anchorfile>struct_m_q_t_t_subscribe_info__t.html</anchorfile>
      <anchor>adb0b28240fdcd82a85f11cf2f8b5bbf0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>topicFilterLength</name>
      <anchorfile>struct_m_q_t_t_subscribe_info__t.html</anchorfile>
      <anchor>a6972f8e036f8bde9b1f23a2aacb61382</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>noLocalOption</name>
      <anchorfile>struct_m_q_t_t_subscribe_info__t.html</anchorfile>
      <anchor>a9a417e8150a741cfe92e7176209d326c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>retainAsPublishedOption</name>
      <anchorfile>struct_m_q_t_t_subscribe_info__t.html</anchorfile>
      <anchor>a4ea94e01ac69e4744710bb50fdebe503</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>MQTTRetainHandling_t</type>
      <name>retainHandlingOption</name>
      <anchorfile>struct_m_q_t_t_subscribe_info__t.html</anchorfile>
      <anchor>a65c895ef9d14fb6202d07d4e8e5d1073</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTUserProperty_t</name>
    <filename>struct_m_q_t_t_user_property__t.html</filename>
    <member kind="variable">
      <type>const char *</type>
      <name>pKey</name>
      <anchorfile>struct_m_q_t_t_user_property__t.html</anchorfile>
      <anchor>aaaea6defd6ebdde0e7f92f957077e0ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>keyLength</name>
      <anchorfile>struct_m_q_t_t_user_property__t.html</anchorfile>
      <anchor>a711c6b0414926c8b10c14791ba297b16</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>pValue</name>
      <anchorfile>struct_m_q_t_t_user_property__t.html</anchorfile>
      <anchor>a42f2cccdff31cac6a881b6efd0a88efb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>valueLength</name>
      <anchorfile>struct_m_q_t_t_user_property__t.html</anchorfile>
      <anchor>a4d9cf2aaa3ee00042e12ee71cf36ff8d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MQTTVec</name>
    <filename>struct_m_q_t_t_vec.html</filename>
    <member kind="variable">
      <type>TransportOutVector_t *</type>
      <name>pVector</name>
      <anchorfile>struct_m_q_t_t_vec.html</anchorfile>
      <anchor>a35ba714afe80db56d4346949ce635a5f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>vectorLen</name>
      <anchorfile>struct_m_q_t_t_vec.html</anchorfile>
      <anchor>a53b13c310696095b7f1a5254e75552fb</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>TransportInterface_t</name>
    <filename>struct_transport_interface__t.html</filename>
    <member kind="variable">
      <type>TransportRecv_t</type>
      <name>recv</name>
      <anchorfile>struct_transport_interface__t.html</anchorfile>
      <anchor>a7c34e9b865e2a509306f09c7dfa3699e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TransportSend_t</type>
      <name>send</name>
      <anchorfile>struct_transport_interface__t.html</anchorfile>
      <anchor>a01cd9935e9a5266ca196243a0054d489</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TransportWritev_t</type>
      <name>writev</name>
      <anchorfile>struct_transport_interface__t.html</anchorfile>
      <anchor>a8cf677fbeee53d270daa6dacfa138b79</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>NetworkContext_t *</type>
      <name>pNetworkContext</name>
      <anchorfile>struct_transport_interface__t.html</anchorfile>
      <anchor>aaf4702050bef8d62714a4d3900e95087</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>TransportOutVector_t</name>
    <filename>struct_transport_out_vector__t.html</filename>
    <member kind="variable">
      <type>const void *</type>
      <name>iov_base</name>
      <anchorfile>struct_transport_out_vector__t.html</anchorfile>
      <anchor>a0ffa5c06bf00006cbafa8e244951038d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>iov_len</name>
      <anchorfile>struct_transport_out_vector__t.html</anchorfile>
      <anchor>ada73dafb2d34311f33fefad38603b35c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>mqtt_enum_types</name>
    <title>Enumerated Types</title>
    <filename>group__mqtt__enum__types.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>MQTTConnectionStatus_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga9f84d003695205cf10a7bd0bafb3dbf6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTNotConnected</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga9f84d003695205cf10a7bd0bafb3dbf6a0320177ebf1f1b2e24646b44702cec69</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTConnected</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga9f84d003695205cf10a7bd0bafb3dbf6a82c8f64d976734e5632e5257bc429ef5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTDisconnectPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga9f84d003695205cf10a7bd0bafb3dbf6a3c7e17f463f44d8f7ce50475b129ac24</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTPublishState_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga0480de7552eedd739a26a23fa8e6fd94</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStateNull</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a8349567b7a9efb3913a64a8f4f6fe5c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPublishSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a896b1507647b504c9208580e4cde26ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubAckSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a65f6f7b343a30fc0558e3aeeb8c97f35</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubRecSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a11e2319a2b25b82121471743d39761e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubRelSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a5d2ee2709c6dc7a1eb8b9c40f318909b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubCompSend</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a7d88904d550b502b4424a41aa4205e56</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubAckPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94ab086c55acf106cdc8d420f90899b6803</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubRecPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a1bea59454700be9b683b7eb8aaf6bb4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubRelPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a695431cde1dc9dc5a2dcbd10eba49df2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubCompPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94a3281a28d1829d954b596f091b547b627</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPublishDone</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga0480de7552eedd739a26a23fa8e6fd94ad07733793a235ef9a6a04d16637cd7dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTPubAckType_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga8c1bee959b3ed5fab2a2688dd72bf237</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPuback</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga8c1bee959b3ed5fab2a2688dd72bf237a53d5939c680962f37c15ee87ffd63d0f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubrec</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga8c1bee959b3ed5fab2a2688dd72bf237a8c98d5d1a68dda33d9039009ab4ef053</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubrel</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga8c1bee959b3ed5fab2a2688dd72bf237af2d737088a231c88e7603acfdbc4fc8c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPubcomp</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga8c1bee959b3ed5fab2a2688dd72bf237a910c34311ad6a2341afc04839e1c13bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTSubAckStatus_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga48dabc1579e3c0ac6058ce9068054611</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSubAckSuccessQos0</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga48dabc1579e3c0ac6058ce9068054611abcc3040d7d53025baee3542c40758abb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSubAckSuccessQos1</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga48dabc1579e3c0ac6058ce9068054611ab180361a6da712c8144d8c499537787d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSubAckSuccessQos2</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga48dabc1579e3c0ac6058ce9068054611a877b2afbc6ec7d9ab57d4862caadf4f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSubAckFailure</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga48dabc1579e3c0ac6058ce9068054611aeb83b20da8eda934cde6b92db225a808</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTStatus_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gaba7ec045874a1c3432f99173367f735c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSuccess</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca484e062cb4f3fccc1858dd25cfeee056</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTBadParameter</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa39030c93b0263b2699502a074f003b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTNoMemory</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735cab1be4db832a0468f024243bca151a8df</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTSendFailed</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735cafd06b63fe9677fa2af06b0f4c7d4ad55</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTRecvFailed</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa14bc8aa4ad218702d782366945d43ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTBadResponse</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa5d7507e7664a14d63a8bc44b280093e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTServerRefused</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca25a3d1747e308e99daa805fe576f84b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTNoDataAvailable</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca676f21c0ddf297ae3ec874bc829aa957</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTIllegalState</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca67905d7a05f98faa557a73eb5092bd8f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStateCollision</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca8d05b92240dea6df08eab5a9e3799c11</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTKeepAliveTimeout</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca076ca8965e836a06e707a94adb26144f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTNeedMoreBytes</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa97df53014d919df5ecd54398f89f9b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStatusConnected</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735caa13a678a441c9ef6b88d6d8be8a64090</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStatusNotConnected</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca074273b04f70b93c1f20702096cac273</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTStatusDisconnectPending</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca230baa3eaabf50e6b319f792a82bb863</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPublishStoreFailed</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca61a3e19715d8ee1ee330c9bbd4b2708a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTPublishRetrieveFailed</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggaba7ec045874a1c3432f99173367f735ca274b61e8a2aea2cf551353c6d09a6eb2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTQoS_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gae308a5928d7f537379c29a894228093a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTQoS0</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggae308a5928d7f537379c29a894228093aaad51b23a1ae1417f96d8f343c788d1d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTQoS1</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggae308a5928d7f537379c29a894228093aa019d0b8a8cfadb6f98462b046bdacbb2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTTQoS2</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ggae308a5928d7f537379c29a894228093aa85e04ac0465cbdef6dd69ff71b2bbfbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTSuccessFailReasonCode_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga377edfeeb661cf054a3c7c598637450e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaec27e57d19af296e4bb5d8f90341fa3f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_NO_MATCHING_SUBSCRIBERS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea73b7865fc7a3270a164578ddb64ad8d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9a9d5864934d095d93f67161f81595d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea82e0d55e321db001275fee139d577191</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9c8370fe6dccaac60b16231547d5b6a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_TOPIC_NAME_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea8b17f877c0fdb9c9335eac60a9dbf22c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_PACKET_IDENTIFIER_IN_USE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eafc2774d718797370f5906e7b20539aac</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea05c1966ba2278d44e83b9ddc85837643</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBACK_PAYLOAD_FORMAT_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea932a871c8527003e79f798057761bc55</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea8d1f682d9f527fab38d402de4db8733d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_NO_MATCHING_SUBSCRIBERS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab5230510b5f7cfd96c6ea2aa9a0b493f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea168512c03686ee4050ea35d0525ff6bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaa414c4457e344718201c7123cfc5f13d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea913d3524748b2a666d3b7f76de6c9c47</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_TOPIC_NAME_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea1772f8237e7aae6721795c723bbac7d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_PACKET_IDENTIFIER_IN_USE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea09b6d2b1f88e3c37ae65d6c18c875d73</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea21b7b0bd8de50f4fe60dabc4147a3635</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREC_PAYLOAD_FORMAT_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9ad53a4155b45aa8caef03161da252c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREL_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea160a49e8cdf0c3057c1b62b91140da81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBREL_PACKET_IDENTIFIER_NOT_FOUND</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea2adc444a76d72ba1d82e49d2f76898f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBCOMP_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea30200593b5428a3fde25fff1bca99ccd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_PUBCOMP_PACKET_IDENTIFIER_NOT_FOUND</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea3b21320822eb0c9523e2c6933a15a436</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaa05642f2d6bcee441d2110eb02806b14</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea3fcfe2653d5beddda324c84054b6f307</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_MALFORMED_PACKET</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eadfca66707d73f1f7a29873f2c560318c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_PROTOCOL_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab5523e76b618f2b5825a6f9903ca737c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9e2ee2a9c4cd76850c5c57ebe1b934c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_UNSUPPORTED_PROTOCOL_VERSION</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea19d7ac951f3bcca5cd180a38296d72d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_CLIENT_IDENTIFIER_NOT_VALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea2080f224b87c2c29bccc710c7db5bf82</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_BAD_USER_NAME_OR_PASSWORD</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eafc3f87d6a108fd648cb7c85850fa7cf5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea55c5e62fab7ed193a2a2e958828439e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_SERVER_UNAVAILABLE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea4af7f1f540e1a273935ad68b863049ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_SERVER_BUSY</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaf5f487d1e6f66ce57d72e6d4dbfe712d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_BANNED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eae3b5b13fbe11aa24e05eda01e5df3f6a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_BAD_AUTHENTICATION_METHOD</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaaa0caacb28142c9d425fd8bc3a916d97</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_TOPIC_NAME_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea273cba3efdf86e3fe73a2c8d977da2aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_PACKET_TOO_LARGE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea7b20c7314226847850f87c099f5ce259</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab5f6a48c02fc7a9472bdbadd2d09507e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_PAYLOAD_FORMAT_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea04ae6a169ed488fc07199e59e500aa36</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_RETAIN_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaad9d9fa043c9031989ca258ed76d92c1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_QOS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ead0dd365babab6299360409c9b8f5ec4b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_USE_ANOTHER_SERVER</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea9603c89aa2e2043199b83ef04d21e300</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_SERVER_MOVED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaae65c001ed16cde6e73c90ae51a52e31</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_CONNACK_CONNECTION_RATE_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea18febf18ff0950ac7d75a1bf2e0beb4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_GRANTED_QOS0</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea691755049d5fc3165296ac233d907a4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_GRANTED_QOS1</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaaef376fb954f8b54ff99d86cb4d50c11</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_GRANTED_QOS2</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eae2263fb8bdb2b367a55baebd4d90a1a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaba8aba7d1f6dad09ed7078e33453ec50</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaff2be32d18beea90566c7fccb11db5ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea823864d4817117a7b918c759d96f53bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_TOPIC_FILTER_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea59a194884e3e1abccd33c2aaa11d8378</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_PACKET_IDENTIFIER_IN_USE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea5e8eedbc1c09584c2741fc5e3f086a81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaaeef90d33af2613da0a0967982ad9053</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_SHARED_SUBSCRIPTIONS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eae67171661c2dd9e03c10135e70a7b2b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea41a9e6abaa661b7fbf3c6dc0617afb0a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_SUBACK_WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eae291e9ec840e39f3b970daf3f8447b38</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_SUCCESS</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea34f4d0fe2dcef18f535f172c846f06e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_NO_SUBSCRIPTION_EXISTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea533c4cff4a264052cfdaaf7b8cfce0a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaedc0af01a1ebcd3c260f44aa71d82935</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea1fd2b23ad03605ee3f8f6acf9550f0c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eafdd2cd9e4261858d07236e91e67380c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_TOPIC_FILTER_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea3dc70aeec66055f198326693a55d1e9b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_UNSUBACK_PACKET_IDENTIFIER_IN_USE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea7a8d20d9fe656ce1bbb2cfb3ecf08db8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_NORMAL_DISCONNECTION</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea55edb84a47cdda9f150a12bfd2e38db1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_DISCONNECT_WITH_WILL_MESSAGE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaaa11f277027410058166f75e0d3dbacd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_UNSPECIFIED_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea836695bd488cd356386ec63e20728a7e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_MALFORMED_PACKET</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea228092ce6e3a800f8bb7a5ee49297fa0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_PROTOCOL_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea8a9d508be1ca7eba456b79b3249beff6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_IMPLEMENTATION_SPECIFIC_ERROR</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea26b9d9b87e78ae31feacbeec1fc68ce0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_NOT_AUTHORIZED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ead4542bb94fa87e1daa29ca5609d671fc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SERVER_BUSY</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab4cdb5cb419222a0e5ff587dcb5eb17f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SERVER_SHUTTING_DOWN</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab082c579f274ae698dcc3c91a896f8d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_BAD_AUTHENTICATION_METHOD</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ead4edae719818611fc3db6063ab4e4105</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_KEEP_ALIVE_TIMEOUT</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea56f178ce8bc66bebe20b5d414f795695</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SESSION_TAKEN_OVER</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea562bc2b776339a525922f14024cca3fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_TOPIC_FILTER_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea5e64bb43f132a39d0fe5af25a99ea420</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_TOPIC_NAME_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eabe648c943a525c291a2f4a1eee5315d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_RECEIVE_MAXIMUM_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea7f7163334d5377850cd658049fd4183b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_TOPIC_ALIAS_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaa1bbbe637efa97e740141a357507fb04</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_PACKET_TOO_LARGE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eadd81177a4addf111b27e1dfdcfc7f328</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_MESSAGE_RATE_TOO_HIGH</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaef7a88988105ebb7baaf9f5924b26897</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_QUOTA_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eafe62edd931be084a0a40a60039744f87</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_ADMINISTRATIVE_ACTION</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea4d2cc1ccbb197ebe3ced7718ae002237</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_PAYLOAD_FORMAT_INVALID</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea06eaa2d01ace739d436800ec4cadf437</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_RETAIN_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eab490ac58760a290b109929691931674d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_QOS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450eaa95ba7d7fc079d39632477a9776e467e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_USE_ANOTHER_SERVER</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea440082b1d151728ca496c1624f77ea4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SERVER_MOVED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea7b4ba5aa35ca01bc22012d2b2cfc3cd7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SHARED_SUBSCRIPTIONS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ead41f26fd3217575342fe35da3ec17d99</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_CONNECTION_RATE_EXCEEDED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea4beedd8b2cdb30d03f0651d852fbbbd9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_MAXIMUM_CONNECT_TIME</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea3fdbd45bd2c7955b8ed3aa441c5e0dca</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea173f54ae8b2e495b94ae0431e96590ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_REASON_DISCONNECT_WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga377edfeeb661cf054a3c7c598637450ea944e2976e661db8f7831cec36cdd731c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTRetainHandling_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga276a86010075cf64d522fe56cabee1e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>retainSendOnSub</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga276a86010075cf64d522fe56cabee1e3ad87d133aa73a39124fa12597b9d7c449</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>retainSendOnSubIfNotPresent</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga276a86010075cf64d522fe56cabee1e3a24a986f1b6e7f71f08756fc9e170743b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>retainDoNotSendonSub</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga276a86010075cf64d522fe56cabee1e3a83c31ac46bb92684ee74579b7088a8b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>MQTTSubscriptionType_t</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>ga92e39b92b76d439a183fc6f5e300195f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_TYPE_SUBSCRIBE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga92e39b92b76d439a183fc6f5e300195fafc8760ca08fcb6c2011be8660cf539d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MQTT_TYPE_UNSUBSCRIBE</name>
      <anchorfile>group__mqtt__enum__types.html</anchorfile>
      <anchor>gga92e39b92b76d439a183fc6f5e300195fa91f5a06482f72290b846ffd16f0a4523</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>mqtt_callback_types</name>
    <title>Callback Types</title>
    <filename>group__mqtt__callback__types.html</filename>
    <member kind="typedef">
      <type>uint32_t(*</type>
      <name>MQTTGetCurrentTimeFunc_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>gae3bea55b0e49e5208b8c5709a5ea23aa</anchor>
      <arglist>)(void)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>MQTTEventCallback_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>gaa92f7854cdd6da0b50c3d7e9ded79a8c</anchor>
      <arglist>)(struct MQTTContext *pContext, struct MQTTPacketInfo *pPacketInfo, struct MQTTDeserializedInfo *pDeserializedInfo, enum MQTTSuccessFailReasonCode *pReasonCode, struct MQTTPropBuilder *sendPropsBuffer, struct MQTTPropBuilder *getPropsBuffer)</arglist>
    </member>
    <member kind="typedef">
      <type>int32_t(*</type>
      <name>TransportRecv_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>ga227df31d6daf07e5d833537c12130167</anchor>
      <arglist>)(NetworkContext_t *pNetworkContext, void *pBuffer, size_t bytesToRecv)</arglist>
    </member>
    <member kind="typedef">
      <type>int32_t(*</type>
      <name>TransportSend_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>ga2a39853ff952edd715ab07b33ab2a7c5</anchor>
      <arglist>)(NetworkContext_t *pNetworkContext, const void *pBuffer, size_t bytesToSend)</arglist>
    </member>
    <member kind="typedef">
      <type>int32_t(*</type>
      <name>TransportWritev_t</name>
      <anchorfile>group__mqtt__callback__types.html</anchorfile>
      <anchor>ga47e779557b0c2db95949ef9526861dfb</anchor>
      <arglist>)(NetworkContext_t *pNetworkContext, TransportOutVector_t *pIoVec, size_t ioVecCount)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>mqtt_struct_types</name>
    <title>Parameter Structures</title>
    <filename>group__mqtt__struct__types.html</filename>
    <class kind="struct">MQTTPubAckInfo_t</class>
    <class kind="struct">MQTTContext_t</class>
    <class kind="struct">MQTTDeserializedInfo_t</class>
    <class kind="struct">MQTTFixedBuffer_t</class>
    <class kind="struct">MQTTConnectInfo_t</class>
    <class kind="struct">MQTTSubscribeInfo_t</class>
    <class kind="struct">MQTTUserProperty_t</class>
    <class kind="struct">MQTTConnectProperties_t</class>
    <class kind="struct">MQTTReasonCodeInfo_t</class>
    <class kind="struct">MQTTPropBuilder_t</class>
    <class kind="struct">MQTTPublishInfo_t</class>
    <class kind="struct">MQTTPacketInfo_t</class>
    <class kind="struct">TransportInterface_t</class>
    <member kind="typedef">
      <type>struct NetworkContext</type>
      <name>NetworkContext_t</name>
      <anchorfile>group__mqtt__struct__types.html</anchorfile>
      <anchor>ga7769e434e7811caed8cd6fd7f9ec26ec</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>mqtt_basic_types</name>
    <title>Basic Types</title>
    <filename>group__mqtt__basic__types.html</filename>
    <member kind="typedef">
      <type>size_t</type>
      <name>MQTTStateCursor_t</name>
      <anchorfile>group__mqtt__basic__types.html</anchorfile>
      <anchor>ga2ca7d486d83fe555953a8c7876ee0d6e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>mqtt_constants</name>
    <title>Constants</title>
    <filename>group__mqtt__constants.html</filename>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_ID_INVALID</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga9fde6503edb9eaad50ecd3392ab9992a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_SUB_UNSUB_MAX_VECTORS</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga928ea0bff12ebf9cf9fa9dfe5cafebbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_CONNECT</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga64a0515bda2ecc89e97595535e1cf0ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_CONNACK</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gab14f6c39c303eac1a76816edfde7feab</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBLISH</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga5b2d79c61f2591c8e5772f974826d4ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBACK</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga5f279d63de47a973b41b95f74f47a4f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBREC</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gafa2d8f28da39560f152076b99610e6a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBREL</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gaeaa2ceecffda50e2d22ccecf046083c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PUBCOMP</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga478ecbc98d2ca83d4ce7db33622b5c3b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_SUBSCRIBE</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga80cfef333e60d967ca927b2e5e665f18</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_SUBACK</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga307e0186aa17fdd0d6d181d3d2715766</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_UNSUBSCRIBE</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga4a94c954cfcea31c8fc3e2adf092b228</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_UNSUBACK</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga38bc8ed0b9a1581cf85cecdede7d1a64</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PINGREQ</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gacbe28c7d081275d1805c2142ff792185</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_PINGRESP</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga285fc02048e2482794042fa98639e514</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PACKET_TYPE_DISCONNECT</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>gaed07155a3d6fa4b7624b9f36ed33ec6d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_ACK_PACKET_SIZE</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga26994fcfacb1cff892caa45ec31ca7c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_STATE_CURSOR_INITIALIZER</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga666ad78e7eaaffa51f5cab96201a9476</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>MQTT_PUBLISH_ACK_PACKET_SIZE_WITH_REASON</name>
      <anchorfile>group__mqtt__constants.html</anchorfile>
      <anchor>ga0739186459bf69b04e79cec3492493d8</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>mqtt_design</name>
    <title>Design</title>
    <filename>mqtt_design.html</filename>
    <docanchor file="mqtt_design.html" title="Interfaces and Callbacks">mqtt_interfaces</docanchor>
    <docanchor file="mqtt_design.html" title="Serializers and Deserializers">mqtt_serializers</docanchor>
    <docanchor file="mqtt_design.html" title="Sessions and State">mqtt_sessions</docanchor>
    <docanchor file="mqtt_design.html" title="Packet Reception">mqtt_receivepackets</docanchor>
    <docanchor file="mqtt_design.html" title="Runtime Timeouts passed to MQTT library">mqtt_receivetimeout</docanchor>
    <docanchor file="mqtt_design.html" title="Keep-Alive">mqtt_keepalive</docanchor>
  </compound>
  <compound kind="page">
    <name>core_mqtt_config</name>
    <title>Configurations</title>
    <filename>core_mqtt_config.html</filename>
    <docanchor file="core_mqtt_config.html">MQTT_DO_NOT_USE_CUSTOM_CONFIG</docanchor>
    <docanchor file="core_mqtt_config.html">MQTT_PINGRESP_TIMEOUT_MS</docanchor>
    <docanchor file="core_mqtt_config.html">MQTT_RECV_POLLING_TIMEOUT_MS</docanchor>
    <docanchor file="core_mqtt_config.html">MQTT_SEND_TIMEOUT_MS</docanchor>
    <docanchor file="core_mqtt_config.html">MQTT_MAX_CONNACK_RECEIVE_RETRY_COUNT</docanchor>
    <docanchor file="core_mqtt_config.html" title="LogError">mqtt_logerror</docanchor>
    <docanchor file="core_mqtt_config.html" title="LogWarn">mqtt_logwarn</docanchor>
    <docanchor file="core_mqtt_config.html" title="LogInfo">mqtt_loginfo</docanchor>
    <docanchor file="core_mqtt_config.html" title="LogDebug">mqtt_logdebug</docanchor>
  </compound>
  <compound kind="page">
    <name>mqtt_functions</name>
    <title>Functions</title>
    <filename>mqtt_functions.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_init_function</name>
    <title>MQTT_Init</title>
    <filename>mqtt_init_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_propertybuilder_init_function</name>
    <title>MQTT_PropertyBuilder_Init</title>
    <filename>mqtt_propertybuilder_init_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_connect_function</name>
    <title>MQTT_Connect</title>
    <filename>mqtt_connect_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_subscribe_function</name>
    <title>MQTT_Subscribe</title>
    <filename>mqtt_subscribe_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_publish_function</name>
    <title>MQTT_Publish</title>
    <filename>mqtt_publish_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_ping_function</name>
    <title>MQTT_Ping</title>
    <filename>mqtt_ping_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_unsubscribe_function</name>
    <title>MQTT_Unsubscribe</title>
    <filename>mqtt_unsubscribe_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_disconnect_function</name>
    <title>MQTT_Disconnect</title>
    <filename>mqtt_disconnect_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_processloop_function</name>
    <title>MQTT_ProcessLoop</title>
    <filename>mqtt_processloop_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_receiveloop_function</name>
    <title>MQTT_ReceiveLoop</title>
    <filename>mqtt_receiveloop_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getpacketid_function</name>
    <title>MQTT_GetPacketId</title>
    <filename>mqtt_getpacketid_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getsubackstatuscodes_function</name>
    <title>MQTT_GetSubAckStatusCodes</title>
    <filename>mqtt_getsubackstatuscodes_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_status_strerror_function</name>
    <title>MQTT_Status_strerror</title>
    <filename>mqtt_status_strerror_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_publishtoresend_function</name>
    <title>MQTT_PublishToResend</title>
    <filename>mqtt_publishtoresend_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getconnectpacketsize_function</name>
    <title>MQTT_GetConnectPacketSize</title>
    <filename>mqtt_getconnectpacketsize_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_serializeconnect_function</name>
    <title>MQTT_SerializeConnect</title>
    <filename>mqtt_serializeconnect_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getsubscribepacketsize_function</name>
    <title>MQTT_GetSubscribePacketSize</title>
    <filename>mqtt_getsubscribepacketsize_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_serializesubscribe_function</name>
    <title>MQTT_SerializeSubscribe</title>
    <filename>mqtt_serializesubscribe_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getunsubscribepacketsize_function</name>
    <title>MQTT_GetUnsubscribePacketSize</title>
    <filename>mqtt_getunsubscribepacketsize_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_serializeunsubscribe_function</name>
    <title>MQTT_SerializeUnsubscribe</title>
    <filename>mqtt_serializeunsubscribe_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_validatepublishparams_function</name>
    <title>MQTT_ValidatePublishParams</title>
    <filename>mqtt_validatepublishparams_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getpublishpacketsize_function</name>
    <title>MQTT_GetPublishPacketSize</title>
    <filename>mqtt_getpublishpacketsize_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_serializepublish_function</name>
    <title>MQTT_SerializePublish</title>
    <filename>mqtt_serializepublish_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_validatepublishproperties_function</name>
    <title>MQTT_ValidatePublishProperties</title>
    <filename>mqtt_validatepublishproperties_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_serializepublishheader_function</name>
    <title>MQTT_SerializePublishHeader</title>
    <filename>mqtt_serializepublishheader_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_serializepublishheaderwithouttopic_function</name>
    <title>MQTT_SerializePublishHeaderWithoutTopic</title>
    <filename>mqtt_serializepublishheaderwithouttopic_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_serializeack_function</name>
    <title>MQTT_SerializeAck</title>
    <filename>mqtt_serializeack_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getackpacketsize_function</name>
    <title>MQTT_GetAckPacketSize</title>
    <filename>mqtt_getackpacketsize_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getdisconnectpacketsize_function</name>
    <title>MQTT_GetDisconnectPacketSize</title>
    <filename>mqtt_getdisconnectpacketsize_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getpingreqpacketsize_function</name>
    <title>MQTT_GetPingreqPacketSize</title>
    <filename>mqtt_getpingreqpacketsize_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_serializepingreq_function</name>
    <title>MQTT_SerializePingreq</title>
    <filename>mqtt_serializepingreq_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_deserializepublish_function</name>
    <title>MQTT_DeserializePublish</title>
    <filename>mqtt_deserializepublish_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_deserializeack_function</name>
    <title>MQTT_DeserializeAck</title>
    <filename>mqtt_deserializeack_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_deserializedisconnect_function</name>
    <title>MQTT_DeserializeDisconnect</title>
    <filename>mqtt_deserializedisconnect_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_getincomingpackettypeandlength_function</name>
    <title>MQTT_GetIncomingPacketTypeAndLength</title>
    <filename>mqtt_getincomingpackettypeandlength_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_subscribeid_function</name>
    <title>MQTTPropAdd_SubscribeId</title>
    <filename>mqttpropadd_subscribeid_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_userprop_function</name>
    <title>MQTTPropAdd_UserProp</title>
    <filename>mqttpropadd_userprop_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_sessionexpiry_function</name>
    <title>MQTTPropAdd_SessionExpiry</title>
    <filename>mqttpropadd_sessionexpiry_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_willdelayinterval_function</name>
    <title>MQTTPropAdd_WillDelayInterval</title>
    <filename>mqttpropadd_willdelayinterval_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_connreceivemax_function</name>
    <title>MQTTPropAdd_ConnReceiveMax</title>
    <filename>mqttpropadd_connreceivemax_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_connmaxpacketsize_function</name>
    <title>MQTTPropAdd_ConnMaxPacketSize</title>
    <filename>mqttpropadd_connmaxpacketsize_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_conntopicaliasmax_function</name>
    <title>MQTTPropAdd_ConnTopicAliasMax</title>
    <filename>mqttpropadd_conntopicaliasmax_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_connrequestrespinfo_function</name>
    <title>MQTTPropAdd_ConnRequestRespInfo</title>
    <filename>mqttpropadd_connrequestrespinfo_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_connrequestprobinfo_function</name>
    <title>MQTTPropAdd_ConnRequestProbInfo</title>
    <filename>mqttpropadd_connrequestprobinfo_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_connauthmethod_function</name>
    <title>MQTTPropAdd_ConnAuthMethod</title>
    <filename>mqttpropadd_connauthmethod_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_connauthdata_function</name>
    <title>MQTTPropAdd_ConnAuthData</title>
    <filename>mqttpropadd_connauthdata_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_pubpayloadformat_function</name>
    <title>MQTTPropAdd_PubPayloadFormat</title>
    <filename>mqttpropadd_pubpayloadformat_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_pubmessageexpiry_function</name>
    <title>MQTTPropAdd_PubMessageExpiry</title>
    <filename>mqttpropadd_pubmessageexpiry_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_pubtopicalias_function</name>
    <title>MQTTPropAdd_PubTopicAlias</title>
    <filename>mqttpropadd_pubtopicalias_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_pubresponsetopic_function</name>
    <title>MQTTPropAdd_PubResponseTopic</title>
    <filename>mqttpropadd_pubresponsetopic_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_pubcorrelationdata_function</name>
    <title>MQTTPropAdd_PubCorrelationData</title>
    <filename>mqttpropadd_pubcorrelationdata_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_pubcontenttype_function</name>
    <title>MQTTPropAdd_PubContentType</title>
    <filename>mqttpropadd_pubcontenttype_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropadd_reasonstring_function</name>
    <title>MQTTPropAdd_ReasonString</title>
    <filename>mqttpropadd_reasonstring_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_validatesubscribeproperties_function</name>
    <title>MQTT_ValidateSubscribeProperties</title>
    <filename>mqtt_validatesubscribeproperties_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_pubtopicalias_function</name>
    <title>MQTTPropGet_PubTopicAlias</title>
    <filename>mqttpropget_pubtopicalias_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_pubpayloadformat_function</name>
    <title>MQTTPropGet_PubPayloadFormatIndicator</title>
    <filename>mqttpropget_pubpayloadformat_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_pubresponsetopic_function</name>
    <title>MQTTPropGet_PubResponseTopic</title>
    <filename>mqttpropget_pubresponsetopic_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_pubcorrelationdata_function</name>
    <title>MQTTPropGet_PubCorrelationData</title>
    <filename>mqttpropget_pubcorrelationdata_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_pubmessageexpiryinterval_function</name>
    <title>MQTTPropGet_PubMessageExpiryInterval</title>
    <filename>mqttpropget_pubmessageexpiryinterval_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_pubcontenttype_function</name>
    <title>MQTTPropGet_PubContentType</title>
    <filename>mqttpropget_pubcontenttype_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_pubsubscriptionid_function</name>
    <title>MQTTPropGet_PubSubscriptionId</title>
    <filename>mqttpropget_pubsubscriptionid_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_userprop_function</name>
    <title>MQTTPropGet_UserProp</title>
    <filename>mqttpropget_userprop_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_reasonstring_function</name>
    <title>MQTTPropGet_ReasonString</title>
    <filename>mqttpropget_reasonstring_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_disconnectserverref_function</name>
    <title>MQTTPropGet_ServerRef</title>
    <filename>mqttpropget_disconnectserverref_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_sessionexpiry_function</name>
    <title>MQTTPropGet_SessionExpiry</title>
    <filename>mqttpropget_sessionexpiry_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_conntopicaliasmax_function</name>
    <title>MQTTPropGet_ConnTopicAliasMax</title>
    <filename>mqttpropget_conntopicaliasmax_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connreceivemax_function</name>
    <title>MQTTPropGet_ConnReceiveMax</title>
    <filename>mqttpropget_connreceivemax_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connmaxqos_function</name>
    <title>MQTTPropGet_ConnMaxQos</title>
    <filename>mqttpropget_connmaxqos_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connretainavailable_function</name>
    <title>MQTTPropGet_ConnRetainAvailable</title>
    <filename>mqttpropget_connretainavailable_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connmaxpacketsize_function</name>
    <title>MQTTPropGet_ConnMaxPacketSize</title>
    <filename>mqttpropget_connmaxpacketsize_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connclientid_function</name>
    <title>MQTTPropGet_ConnClientId</title>
    <filename>mqttpropget_connclientid_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connwildcard_function</name>
    <title>MQTTPropGet_ConnWildcard</title>
    <filename>mqttpropget_connwildcard_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connsubid_function</name>
    <title>MQTTPropGet_ConnSubId</title>
    <filename>mqttpropget_connsubid_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connsharedsubavailable_function</name>
    <title>MQTTPropGet_ConnSharedSubAvailable</title>
    <filename>mqttpropget_connsharedsubavailable_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connserverkeepalive_function</name>
    <title>MQTTPropGet_ConnServerKeepAlive</title>
    <filename>mqttpropget_connserverkeepalive_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connresponseinfo_function</name>
    <title>MQTTPropGet_ConnResponseInfo</title>
    <filename>mqttpropget_connresponseinfo_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connauthmethod_function</name>
    <title>MQTTPropGet_ConnAuthMethod</title>
    <filename>mqttpropget_connauthmethod_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqttpropget_connauthdata_function</name>
    <title>MQTTPropGet_ConnAuthData</title>
    <filename>mqttpropget_connauthdata_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_incominggetnextprop_function</name>
    <title>MQTT_IncomingGetNextProp</title>
    <filename>mqtt_incominggetnextprop_function.html</filename>
  </compound>
  <compound kind="page">
    <name>mqtt_porting</name>
    <title>Porting Guide</title>
    <filename>mqtt_porting.html</filename>
    <docanchor file="mqtt_porting.html" title="Configuration Macros">mqtt_porting_config</docanchor>
    <docanchor file="mqtt_porting.html" title="Transport Interface">mqtt_porting_transport</docanchor>
    <docanchor file="mqtt_porting.html" title="Time Function">mqtt_porting_time</docanchor>
  </compound>
  <compound kind="page">
    <name>mqtt_timeouts</name>
    <title>Timeouts in coreMQTT library</title>
    <filename>mqtt_timeouts.html</filename>
    <docanchor file="mqtt_timeouts.html" title="Transport Send and Receive timeouts">mqtt_timeouts_transport_send_receive</docanchor>
    <docanchor file="mqtt_timeouts.html" title="MQTT Keep Alive interval">mqtt_timeouts_keep_alive</docanchor>
    <docanchor file="mqtt_timeouts.html" title="MQTT Ping Response timeout">mqtt_timeouts_ping_response</docanchor>
    <docanchor file="mqtt_timeouts.html" title="MQTT Receive Polling timeout">mqtt_timeouts_receive_polling</docanchor>
    <docanchor file="mqtt_timeouts.html" title="MQTT Send timeout">mqtt_timeouts_send</docanchor>
    <docanchor file="mqtt_timeouts.html" title="Timeouts for MQTT_ProcessLoop and MQTT_ReceiveLoop APIs">mqtt_timeouts_process_receive_loop</docanchor>
    <docanchor file="mqtt_timeouts.html" title="Timeout for MQTT_Connect">mqtt_timeouts_connect</docanchor>
  </compound>
  <compound kind="page">
    <name>mqtt_transport_interface</name>
    <title>Transport Interface</title>
    <filename>mqtt_transport_interface.html</filename>
    <docanchor file="mqtt_transport_interface.html" title="Transport Interface Overview">mqtt_transport_interface_overview</docanchor>
    <docanchor file="mqtt_transport_interface.html" title="Implementing the Transport Interface">mqtt_transport_interface_implementation</docanchor>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>Overview</title>
    <filename>index.html</filename>
    <docanchor file="index.html">mqtt</docanchor>
    <docanchor file="index.html" title="Memory Requirements">mqtt_memory_requirements</docanchor>
  </compound>
</tagfile>
