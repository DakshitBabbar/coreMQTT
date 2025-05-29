var group__mqtt__struct__types =
[
    [ "MQTTPubAckInfo_t", "struct_m_q_t_t_pub_ack_info__t.html", [
      [ "packetId", "struct_m_q_t_t_pub_ack_info__t.html#a66cef7b43af5d7fdd33b5d2dc766b2d0", null ],
      [ "qos", "struct_m_q_t_t_pub_ack_info__t.html#a086fcd48ef0b787697526a95c861e8a0", null ],
      [ "publishState", "struct_m_q_t_t_pub_ack_info__t.html#a61314203ef87a231c6489c68b579de34", null ]
    ] ],
    [ "MQTTContext_t", "struct_m_q_t_t_context__t.html", [
      [ "outgoingPublishRecords", "struct_m_q_t_t_context__t.html#a4ea1e37e0e81f010fbf84365ac2ef6de", null ],
      [ "incomingPublishRecords", "struct_m_q_t_t_context__t.html#afc147663a5933de81212fa77057f0a4d", null ],
      [ "outgoingPublishRecordMaxCount", "struct_m_q_t_t_context__t.html#a2851073e252d1e744596272ef13dd14a", null ],
      [ "incomingPublishRecordMaxCount", "struct_m_q_t_t_context__t.html#aa33ed2e10380a854629f1386d0323ea8", null ],
      [ "transportInterface", "struct_m_q_t_t_context__t.html#a87ab9d61e7711325c2c85ce3ce63386a", null ],
      [ "networkBuffer", "struct_m_q_t_t_context__t.html#a231c5576a6ce389317a3f00f95628276", null ],
      [ "ackPropsBuffer", "struct_m_q_t_t_context__t.html#acc6db180acbc7cc7b1ef7c2f5f553631", null ],
      [ "nextPacketId", "struct_m_q_t_t_context__t.html#af47ed55ad7e9bb112324f5f209b70534", null ],
      [ "connectStatus", "struct_m_q_t_t_context__t.html#a4e38c4dc77e7751a0ad8730a41bee47f", null ],
      [ "getTime", "struct_m_q_t_t_context__t.html#aabe1d302a16771292151013e8e30c582", null ],
      [ "appCallback", "struct_m_q_t_t_context__t.html#a73bd9259db9c3a9b84518cbf928ed91f", null ],
      [ "lastPacketTxTime", "struct_m_q_t_t_context__t.html#a01acf90953e830ba3e7f44182cb1d482", null ],
      [ "lastPacketRxTime", "struct_m_q_t_t_context__t.html#a7111ef16e4a4e75a72861f6f3ea8a7c3", null ],
      [ "controlPacketSent", "struct_m_q_t_t_context__t.html#af9724f2426132e3ce96a03892902ef89", null ],
      [ "index", "struct_m_q_t_t_context__t.html#a41b7735cd0746563483b72e17cf103aa", null ],
      [ "keepAliveIntervalSec", "struct_m_q_t_t_context__t.html#afd6071827ef48b230212a5725c2075be", null ],
      [ "pingReqSendTimeMs", "struct_m_q_t_t_context__t.html#acca3efa4146d85f7e874c7c326e23556", null ],
      [ "waitingForPingResp", "struct_m_q_t_t_context__t.html#ac7073f43645f7b7c0c5b7763980004bb", null ],
      [ "connectProperties", "struct_m_q_t_t_context__t.html#a047ae100fbd9c7db279ddfb247d634da", null ],
      [ "pDisconnectInfo", "struct_m_q_t_t_context__t.html#ab41358f43de159a3df911b7e19903833", null ],
      [ "storeFunction", "struct_m_q_t_t_context__t.html#ac205fc33078b0cfa0dfc62807bd9574f", null ],
      [ "retrieveFunction", "struct_m_q_t_t_context__t.html#a270e9e595ecd60948c960d059f8fe718", null ],
      [ "clearFunction", "struct_m_q_t_t_context__t.html#a36e3d500e6efa050d6e666aefa3ff577", null ]
    ] ],
    [ "MQTTDeserializedInfo_t", "struct_m_q_t_t_deserialized_info__t.html", [
      [ "packetIdentifier", "struct_m_q_t_t_deserialized_info__t.html#af4df2a9926a4a68059195daa712d9b84", null ],
      [ "pPublishInfo", "struct_m_q_t_t_deserialized_info__t.html#ac347273fae1e92b9cbeda1714066c1de", null ],
      [ "deserializationResult", "struct_m_q_t_t_deserialized_info__t.html#a7df1b7b60404c9f1604fec0081d2625d", null ],
      [ "pReasonCode", "struct_m_q_t_t_deserialized_info__t.html#aa6e6ca63ae46b306dd3d304f6f564c29", null ]
    ] ],
    [ "MQTTFixedBuffer_t", "struct_m_q_t_t_fixed_buffer__t.html", [
      [ "pBuffer", "struct_m_q_t_t_fixed_buffer__t.html#acea147448e044870fb36b7fa2347dbd6", null ],
      [ "size", "struct_m_q_t_t_fixed_buffer__t.html#a0b0b6a93cc62751ebeb03095d5431636", null ]
    ] ],
    [ "MQTTConnectInfo_t", "struct_m_q_t_t_connect_info__t.html", [
      [ "cleanSession", "struct_m_q_t_t_connect_info__t.html#a606e7765c4f2215fb2bf630f6eb9ff6b", null ],
      [ "keepAliveSeconds", "struct_m_q_t_t_connect_info__t.html#a7d05d53261732ebdfbb9ee665a347591", null ],
      [ "pClientIdentifier", "struct_m_q_t_t_connect_info__t.html#a010f8f6993cbf8899648d5c515ff7884", null ],
      [ "clientIdentifierLength", "struct_m_q_t_t_connect_info__t.html#a8077ef36ab318f3d35bee6f098fa54d4", null ],
      [ "pUserName", "struct_m_q_t_t_connect_info__t.html#a1118d7d3251a11445318557280db53b4", null ],
      [ "userNameLength", "struct_m_q_t_t_connect_info__t.html#a7165be3bb06d4527ab4eb773b50e05e1", null ],
      [ "pPassword", "struct_m_q_t_t_connect_info__t.html#acec6c79a11d2f0f130802393f34d2b5e", null ],
      [ "passwordLength", "struct_m_q_t_t_connect_info__t.html#a818c4e212a12020a4109eb890ec96383", null ]
    ] ],
    [ "MQTTSubscribeInfo_t", "struct_m_q_t_t_subscribe_info__t.html", [
      [ "qos", "struct_m_q_t_t_subscribe_info__t.html#a64cf2e423f60cfec122eeaef80c0fd86", null ],
      [ "pTopicFilter", "struct_m_q_t_t_subscribe_info__t.html#adb0b28240fdcd82a85f11cf2f8b5bbf0", null ],
      [ "topicFilterLength", "struct_m_q_t_t_subscribe_info__t.html#a6972f8e036f8bde9b1f23a2aacb61382", null ],
      [ "noLocalOption", "struct_m_q_t_t_subscribe_info__t.html#a9a417e8150a741cfe92e7176209d326c", null ],
      [ "retainAsPublishedOption", "struct_m_q_t_t_subscribe_info__t.html#a4ea94e01ac69e4744710bb50fdebe503", null ],
      [ "retainHandlingOption", "struct_m_q_t_t_subscribe_info__t.html#a65c895ef9d14fb6202d07d4e8e5d1073", null ]
    ] ],
    [ "MQTTUserProperty_t", "struct_m_q_t_t_user_property__t.html", [
      [ "pKey", "struct_m_q_t_t_user_property__t.html#aaaea6defd6ebdde0e7f92f957077e0ee", null ],
      [ "keyLength", "struct_m_q_t_t_user_property__t.html#a711c6b0414926c8b10c14791ba297b16", null ],
      [ "pValue", "struct_m_q_t_t_user_property__t.html#a42f2cccdff31cac6a881b6efd0a88efb", null ],
      [ "valueLength", "struct_m_q_t_t_user_property__t.html#a4d9cf2aaa3ee00042e12ee71cf36ff8d", null ]
    ] ],
    [ "MQTTConnectProperties_t", "struct_m_q_t_t_connect_properties__t.html", [
      [ "sessionExpiry", "struct_m_q_t_t_connect_properties__t.html#a0af8ab802ad0f79cef1bcb128916727f", null ],
      [ "receiveMax", "struct_m_q_t_t_connect_properties__t.html#a41ef86dd266204c0ecdd8a04039fc522", null ],
      [ "maxPacketSize", "struct_m_q_t_t_connect_properties__t.html#a9d005aa91297636ae3ba2ab1a873f378", null ],
      [ "topicAliasMax", "struct_m_q_t_t_connect_properties__t.html#a7588b9a45dc75c8d61a6bb87547d92d1", null ],
      [ "requestResponseInfo", "struct_m_q_t_t_connect_properties__t.html#a14e792dfc9cd2ada1c2eeb05b28b0e34", null ],
      [ "requestProblemInfo", "struct_m_q_t_t_connect_properties__t.html#a65189b2dadd6c301eee0c337192f4b2d", null ],
      [ "serverReceiveMax", "struct_m_q_t_t_connect_properties__t.html#a4b6bf89da0a46b739630921629652664", null ],
      [ "serverMaxQos", "struct_m_q_t_t_connect_properties__t.html#af2d8508b9097c92430cc856cc1b99d9a", null ],
      [ "retainAvailable", "struct_m_q_t_t_connect_properties__t.html#a3f43762670e814c6ba159caeb8d9a120", null ],
      [ "serverMaxPacketSize", "struct_m_q_t_t_connect_properties__t.html#a75b14385c9ae1f4e289b8b7ed60b35b5", null ],
      [ "pClientIdentifier", "struct_m_q_t_t_connect_properties__t.html#a2f002590061be7cd476399b9405cce0a", null ],
      [ "clientIdLength", "struct_m_q_t_t_connect_properties__t.html#aa0390e2678fa9bbc4d013372b112b2e0", null ],
      [ "serverTopicAliasMax", "struct_m_q_t_t_connect_properties__t.html#a6803a2beb89dfde0a240c65c3aa50692", null ],
      [ "isWildcardAvaiable", "struct_m_q_t_t_connect_properties__t.html#a257424774266028d8b01a123aaa5ba89", null ],
      [ "isSubscriptionIdAvailable", "struct_m_q_t_t_connect_properties__t.html#ae7c31c1972078226a1feb8342e5c546d", null ],
      [ "isSharedAvailable", "struct_m_q_t_t_connect_properties__t.html#a3e0fcc2cb17930c719ee772fc2a345f9", null ],
      [ "serverKeepAlive", "struct_m_q_t_t_connect_properties__t.html#a86be39e97e280f66dbd96eac2d3d5b3c", null ]
    ] ],
    [ "MQTTReasonCodeInfo_t", "struct_m_q_t_t_reason_code_info__t.html", [
      [ "reasonCode", "struct_m_q_t_t_reason_code_info__t.html#a2b61cf1ee4caa1865a54d47da2e76477", null ],
      [ "reasonCodeLength", "struct_m_q_t_t_reason_code_info__t.html#a1476b796abb5bd5acf218a50c3ff53ac", null ]
    ] ],
    [ "MQTTPropBuilder_t", "struct_m_q_t_t_prop_builder__t.html", [
      [ "pBuffer", "struct_m_q_t_t_prop_builder__t.html#a7b2fa2be2e3aa4e99fbdc4a797891a34", null ],
      [ "bufferLength", "struct_m_q_t_t_prop_builder__t.html#a93627d10e651b2d47a1ea18a9c510a16", null ],
      [ "currentIndex", "struct_m_q_t_t_prop_builder__t.html#a5f271ebc88dcae13add5df2ec78a2e0e", null ],
      [ "fieldSet", "struct_m_q_t_t_prop_builder__t.html#a6cc81cd8ebc111cdfbb2c736482d278f", null ]
    ] ],
    [ "MQTTPublishInfo_t", "struct_m_q_t_t_publish_info__t.html", [
      [ "qos", "struct_m_q_t_t_publish_info__t.html#a178224d02b4acdec7e08e88de0e4b399", null ],
      [ "retain", "struct_m_q_t_t_publish_info__t.html#a343b0af89c46a900db4aa5c775a0975a", null ],
      [ "dup", "struct_m_q_t_t_publish_info__t.html#aa1c8954e83bfa678d1ff5429679d4e89", null ],
      [ "pTopicName", "struct_m_q_t_t_publish_info__t.html#aa80e8ca282d01630f878ad0afe81d7a4", null ],
      [ "topicNameLength", "struct_m_q_t_t_publish_info__t.html#a6161c792d20cc7cf8284c1b71ea1145f", null ],
      [ "pPayload", "struct_m_q_t_t_publish_info__t.html#afc28299f4f625f5e674bb61b42f03380", null ],
      [ "payloadLength", "struct_m_q_t_t_publish_info__t.html#a7997964e11571f35f0c3b729db0f760f", null ],
      [ "propertyLength", "struct_m_q_t_t_publish_info__t.html#aaf01d089ad9db1b041015715071942f9", null ],
      [ "willDelay", "struct_m_q_t_t_publish_info__t.html#ab616f292ff5f0680760376667cc9d0b0", null ],
      [ "payloadFormat", "struct_m_q_t_t_publish_info__t.html#a36aa4c2dd74c5e806eb93b4b1e444670", null ],
      [ "topicAlias", "struct_m_q_t_t_publish_info__t.html#a22ada2831f5c7c0b1e88038c55e7e94d", null ],
      [ "msgExpiryInterval", "struct_m_q_t_t_publish_info__t.html#aa40126dd9485324e4f39fae4759fe2ed", null ],
      [ "msgExpiryPresent", "struct_m_q_t_t_publish_info__t.html#a73b90d507e64c0c9153b8456b4261d45", null ],
      [ "contentTypeLength", "struct_m_q_t_t_publish_info__t.html#a80c4ca96519b60918c07a7fc0e72b9d6", null ],
      [ "pContentType", "struct_m_q_t_t_publish_info__t.html#aef934608b3281ffdad77ec858f8208ba", null ],
      [ "responseTopicLength", "struct_m_q_t_t_publish_info__t.html#ad0968e1b42ad90b6a61d51c5d2b2200d", null ],
      [ "pResponseTopic", "struct_m_q_t_t_publish_info__t.html#a5dfc33e889890eb3b45a685d63938b8c", null ],
      [ "correlationLength", "struct_m_q_t_t_publish_info__t.html#a8a2892bc0db01734dbc46a53954b64f7", null ],
      [ "pCorrelationData", "struct_m_q_t_t_publish_info__t.html#ae8348512878ce2523b6a5c7beb0a5117", null ],
      [ "subscriptionId", "struct_m_q_t_t_publish_info__t.html#afac0cceb753c6e0d76cc6bca37cbb421", null ]
    ] ],
    [ "MQTTPacketInfo_t", "struct_m_q_t_t_packet_info__t.html", [
      [ "type", "struct_m_q_t_t_packet_info__t.html#a7fef40548c1aa0f0e7f812a6a7243758", null ],
      [ "pRemainingData", "struct_m_q_t_t_packet_info__t.html#ac66cedff052bc844ec9b296387df60bc", null ],
      [ "remainingLength", "struct_m_q_t_t_packet_info__t.html#a7c85becf08de0ec9776dd4be1fcc4bf8", null ],
      [ "headerLength", "struct_m_q_t_t_packet_info__t.html#aa7de1631ed8e08410942d36a72db558a", null ]
    ] ],
    [ "TransportInterface_t", "struct_transport_interface__t.html", [
      [ "recv", "struct_transport_interface__t.html#a7c34e9b865e2a509306f09c7dfa3699e", null ],
      [ "send", "struct_transport_interface__t.html#a01cd9935e9a5266ca196243a0054d489", null ],
      [ "writev", "struct_transport_interface__t.html#a8cf677fbeee53d270daa6dacfa138b79", null ],
      [ "pNetworkContext", "struct_transport_interface__t.html#aaf4702050bef8d62714a4d3900e95087", null ]
    ] ],
    [ "NetworkContext_t", "group__mqtt__struct__types.html#ga7769e434e7811caed8cd6fd7f9ec26ec", null ]
];