<title>koolss</title>
<content>
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/tomato.js"></script>
	<script type="text/javascript" src="/js/advancedtomato.js"></script>
	<script type="text/javascript" src="/layer/layer.js"></script>
	<style type="text/css">
		.box, #ss_tabs {
			min-width:1122px;
			max-width:1122px;
		}
		.c-checkbox {
			margin-left:-10px;
		}
		/*Switch Icon Start*/
		.switch_field{
			width: 65px;
		}
		.switch_container{
			width: 50px;
			height: 30px;
			border: 1px solid transparent;
			margin-left: 35px;
		}
		.switch_bar{
			width: 43px;
			height: 16px;
			background-color: #717171;
			margin:7px auto 0;
			border-radius: 10px;
		}
		.switch_circle{
			width: 26px;
			height: 26px;
			border-radius: 16px;
			background-color: #FFF;
			margin-top: -21px;
			box-shadow: 0px 1px 4px 1px #444;
		}
		/*Icon*/
		.switch_circle > div{
			width: 16px;
			height: 16px;
			position: absolute;
			margin: 5px 0 0 5px;
		}
		/*background color of bar while checked*/
		.switch:checked ~.switch_container > .switch_bar{
			background-color: #279FD9;
		}
	
		/*control icon style while checked*/
		.switch:checked ~.switch_container > .switch_bar + .switch_circle > div{
			background-image: url("data:image/svg+xml;charset=US-ASCII,%3C%3Fxml%20version%3D%221.0%22%20encoding%3D%22iso-8859-1%22%3F%3E%0A%3Csvg%20version%3D%221.1%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20x%3D%220px%22%20y%3D%220px%22%20viewBox%3D%220%200%2016.9%2016.9%22%20style%3D%22enable-background%3Anew%200%200%2016.9%2016.9%3B%22%20xml%3Aspace%3D%22preserve%22%3E%0A%3Cg%20style%3D%22fill%3A%23279FD9%22%3E%0A%09%3Cpolygon%20points%3D%226.8%2C14.9%200%2C8.8%202.2%2C6.4%206.6%2C10.5%2014.5%2C1.9%2016.8%2C3.9%20%09%22%2F%3E%0A%3C%2Fg%3E%0A%3C%2Fsvg%3E%0A");
			background-repeat: no-repeat;
		}
		.switch:checked ~.switch_container > .switch_circle{
			margin-left: 23px;
		}
		#table-row-panel a.delete-row, #table-row-panel a.move-down-row, #table-row-panel a.move-row, #table-row-panel a.move-up-row {
			float:left;
			font-size:10pt;
			text-align:center;
			padding:13px 15px;
			padding:6px 8px;
			margin-right:5px;
			line-height:1;
			color:#fff;
			background:#585858;
			z-index:1;
			-webkit-transition:background-color 80ms ease;
			transition:background-color 80ms ease
		}
		#table-row-panel a.delete-row:hover, #table-row-panel a.move-down-row:hover, #table-row-panel a.move-row:hover, #table-row-panel a.move-up-row:hover {
			z-index:10;
			background:#434343
		}
		#table-row-panel a.delete-row {
			background:#F76D6A
		}
		#table-row-panel a.delete-row:hover {
			background:#eb4d4a
		}
		#table-row-panel a.apply-row, #table-row-panel a.move-down-row, #table-row-panel a.move-row, #table-row-panel a.move-up-row {
			float:left;
			font-size:10pt;
			text-align:center;
			padding:13px 15px;
			padding:6px 8px;
			line-height:1;
			color:#fff;
			background:#585858;
			z-index:1;
			-webkit-transition:background-color 80ms ease;
			transition:background-color 80ms ease
		}
		#table-row-panel a.apply-row:hover, #table-row-panel a.move-down-row:hover, #table-row-panel a.move-row:hover, #table-row-panel a.move-up-row:hover {
			z-index:10;
			background:#434343
		}
		#table-row-panel a.apply-row {
			background:#99FF66
		}
		#table-row-panel a.apply-row:hover {
			background:#99FF00
		}
	
		table.line-table tr:nth-child(even) {
			background:rgba(0, 0, 0, 0.04)
		}	
		#ss_node-grid > tbody > tr.even.use,
		#ssr_node-grid > tbody > tr.even.use {
			background:rgba(128, 255, 255, 0.3)
		}
		#ss_node-grid > tbody > tr.odd.use,
		#ssr_node-grid > tbody > tr.odd.use {
			background:rgba(128, 255, 255, 0.3)
		}
		table.line-table tr:hover {
			background:#D7D7D7
		}
		table.line-table tr:hover .progress {
			background:#D7D7D7
		}
		#ss_link-grid,
		#online_link-grid{
		    table-layout:fixed;/* ???????????????????????????????????????fixed?????????td??????????????????????????? */
		}
		#ss_link-grid td,
		#online_link-grid td{
		    width:100%;
		    word-break:keep-all;/* ????????? */
		    white-space:nowrap;/* ????????? */
		    overflow:hidden;/* ???????????????????????????????????????????????? */
		    text-overflow:ellipsis;/* ?????????????????????????????????????????????(...) ?????????overflow:hidden;???????????????*/
		}
		select:hover, input:hover{
			border: 1px solid #0099FF
		}
		.btn.sub-btn-tab {
			/*border-radius: 3px;*/
			color:#777777!important;
			background:#FAFAFA;
			box-shadow:none;
			-webkit-box-shadow:none;
			line-height:1.2;
			border:1px solid rgba(119, 119, 119, 0.41);;
			border-width:0px 0 2px 0px
		}

		.btn.sub-btn-tab.active, .btn.btn-tab:focus {
			/*background:rgba(44, 196, 68, 0.47);*/
			border:1px solid #f36c21;
			border-width:0px 0 2px 0px
		}
	</style>
	<script type="text/javascript">
		var dbus;
		var layout;
		init_layout();
		get_dbus_data();
		get_arp_list();
		var _responseLen;
		var noChange = 0;
		var x = 4;
		var node_ss;
		var node_ssr;
		var status_time = 1;
		var status_refresh_rate = parseInt(dbus["ss_basic_refreshrate"]);
		var option_mode = [['1', 'gfwlist??????'], ['2', '?????????????????????'], ['3', '????????????'], ['4', '????????????']];
		var option_mode_name = ['', 'gfwlist??????', '?????????????????????', '????????????', '????????????'];
		var option_acl_mode = [['0', '?????????SS'], ['1', 'gfwlist??????'], ['2', '?????????????????????'], ['3', '????????????'], ['4', '????????????']];
		var option_acl_mode_name = ['?????????SS', 'gfwlist??????', '?????????????????????', '????????????', '????????????'];
		var option_acl_port = [['80,443', '80,443'], ['22,80,443', '22,80,443'], ['all', '????????????'],['0', '?????????']];
		var option_acl_port_name = ['80,443', '22,80,443', '????????????', '?????????'];
		var option_method = [['none', 'none'],['rc4', 'rc4'], ['rc4-md5', 'rc4-md5'], ['rc4-md5-6', 'rc4-md5-6'], ['aes-128-gcm', 'aes-128-gcm'], ['aes-192-gcm', 'aes-192-gcm'], ['aes-256-gcm', 'aes-256-gcm'], ['aes-128-cfb', 'aes-128-cfb'], ['aes-192-cfb', 'aes-192-cfb'], ['aes-256-cfb', 'aes-256-cfb'], ['aes-128-ctr', 'aes-128-ctr'], ['aes-192-ctr', 'aes-192-ctr'], ['aes-256-ctr', 'aes-256-ctr'], ['camellia-128-cfb', 'camellia-128-cfb'], ['camellia-192-cfb', 'camellia-192-cfb'], ['camellia-256-cfb', 'camellia-256-cfb'], ['bf-cfb', 'bf-cfb'], ['cast5-cfb', 'cast5-cfb'], ['idea-cfb', 'idea-cfb'], ['rc2-cfb', 'rc2-cfb'], ['seed-cfb', 'seed-cfb'], ['salsa20', 'salsa20'], ['chacha20', 'chacha20'], ['chacha20-ietf', 'chacha20-ietf'], ['chacha20-ietf-poly1305', 'chacha20-ietf-poly1305'], ['xchacha20-ietf-poly1305', 'xchacha20-ietf-poly1305']];
		var option_ssr_protocal = [['origin','origin'],['verify_simple','verify_simple'],['verify_sha1','verify_sha1'],['auth_sha1','auth_sha1'],['auth_sha1_v2','auth_sha1_v2'],['auth_sha1_v4','auth_sha1_v4'],['auth_aes128_md5','auth_aes128_md5'],['auth_aes128_sha1','auth_aes128_sha1'],['auth_chain_a','auth_chain_a'],['auth_chain_b','auth_chain_b'],['auth_chain_c','auth_chain_c'],['auth_chain_d','auth_chain_d'],['auth_chain_e','auth_chain_e'],['auth_chain_f','auth_chain_f']];
		var option_ssr_obfs = [['plain','plain'],['http_simple','http_simple'],['http_post','http_post'],['tls1.2_ticket_auth','tls1.2_ticket_auth']];
		var option_dns_china = [['1', '?????????DNS??????????????????'],  ['2', '??????DNS1???223.5.5.5???'],  ['3', '??????DNS2???223.6.6.6???'],  ['4', '114DNS1???114.114.114.114???'],  ['5', '114DNS1???114.114.115.115???'],  ['6', 'cnnic DNS???1.2.4.8???'],  ['7', 'cnnic DNS???210.2.4.8???'],  ['8', 'oneDNS1???112.124.47.27???'],  ['9', 'oneDNS2???114.215.126.16???'],  ['10', '??????DNS???180.76.76.76???'],  ['11', 'DNSpod DNS???119.29.29.29???'],  ['12', '?????????']];
		var option_dns_foreign = [['1', 'dns2socks'], ['2', 'ss-tunnel'], ['3', 'dnscrypt-proxy'], ['4', 'pdnsd'], ['5', 'ChinaDNS'], ['6', 'Pcap_DNSProxy']];
		var option_ss_sstunnel = [['2', 'google dns\[8.8.8.8\]'], ['3', 'google dns\[8.8.4.4\]'], ['1', 'OpenDNS\[208.67.220.220\]'], ['4', '?????????']];
		var option_ChinaDNS_china = [['1', '??????DNS1???223.5.5.5???'], ['2', '??????DNS2???223.6.6.6???'], ['3', '114DNS1???114.114.114.114???'], ['4', '114DNS1???114.114.115.115???'], ['5', 'cnnic DNS???1.2.4.8???'], ['6', 'cnnic DNS???210.2.4.8???'], ['7', 'oneDNS1???112.124.47.27???'], ['8', 'oneDNS2???114.215.126.16???'], ['9', '??????DNS???180.76.76.76???'], ['10', 'DNSpod DNS???119.29.29.29???'], ['11', '?????????']];
		var option_opendns = [['adguard-dns-family-ns1','Adguard DNS Family Protection 1'], ['adguard-dns-family-ns2','Adguard DNS Family Protection 2'], ['adguard-dns-ns1','Adguard DNS 1'], ['adguard-dns-ns2','Adguard DNS 2'], ['cisco','Cisco OpenDNS'], ['cisco-familyshield','Cisco OpenDNS with FamilyShield'], ['cisco-ipv6','Cisco OpenDNS over IPv6'], ['cisco-port53','Cisco OpenDNS backward compatibility port 53'], ['cloudns-syd','CloudNS Sydney'], ['cs-cawest','CS Canada west DNSCrypt server'], ['cs-cfi','CS cryptofree France DNSCrypt server'], ['cs-cfii','CS secondary cryptofree France DNSCrypt server'], ['cs-ch','CS Switzerland DNSCrypt server'], ['cs-de','CS Germany DNSCrypt server'], ['cs-fr2','CS secondary France DNSCrypt server'], ['cs-rome','CS Italy DNSCrypt server'], ['cs-useast','CS New York City NY US DNSCrypt server'], ['cs-usnorth','CS Chicago IL US DNSCrypt server'], ['cs-ussouth','CS Dallas TX US DNSCrypt server'], ['cs-ussouth2','CS Atlanta GA US DNSCrypt server'], ['cs-uswest','CS Seattle WA US DNSCrypt server'], ['cs-uswest2','CS Las Vegas NV US DNSCrypt server'], ['d0wn-au-ns1','OpenNIC Resolver Australia 01 - d0wn'], ['d0wn-bg-ns1','OpenNIC Resolver Bulgaria 01 - d0wn'], ['d0wn-cy-ns1','OpenNIC Resolver Cyprus 01 - d0wn'], ['d0wn-de-ns1','OpenNIC Resolver Germany 01 - d0wn'], ['d0wn-de-ns2','OpenNIC Resolver Germany 02 - d0wn'], ['d0wn-dk-ns1','OpenNIC Resolver Denmark 01 - d0wn'], ['d0wn-fr-ns2','OpenNIC Resolver France 02 - d0wn'], ['d0wn-es-ns1','OpenNIC Resolver Spain 01- d0wn'], ['d0wn-gr-ns1','OpenNIC Resolver Greece 01 - d0wn'], ['d0wn-hk-ns1','OpenNIC Resolver Hong Kong 01 - d0wn'], ['d0wn-is-ns1','OpenNIC Resolver Iceland 01 - d0wn'], ['d0wn-lu-ns1','OpenNIC Resolver Luxembourg 01 - d0wn'], ['d0wn-lu-ns1-ipv6','OpenNIC Resolver Luxembourg 01 over IPv6 - d0wn'], ['d0wn-lv-ns1','OpenNIC Resolver Latvia 01 - d0wn'], ['d0wn-lv-ns2','OpenNIC Resolver Latvia 02 - d0wn'], ['d0wn-lv-ns2-ipv6','OpenNIC Resolver Latvia 01 over IPv6 - d0wn'], ['d0wn-nl-ns3','OpenNIC Resolver Netherlands 03 - d0wn'], ['d0wn-nl-ns3-ipv6','OpenNIC Resolver Netherlands 03 over IPv6 - d0wn'], ['d0wn-random-ns1','OpenNIC Resolver Moldova 01 - d0wn'], ['d0wn-random-ns2','OpenNIC Resolver Netherlands 02 - d0wn'], ['d0wn-ro-ns1','OpenNIC Resolver Romania 01 - d0wn'], ['d0wn-ro-ns1-ipv6','OpenNIC Resolver Romania 01 over IPv6 - d0wn'], ['d0wn-ru-ns1','OpenNIC Resolver Russia 01 - d0wn'], ['d0wn-se-ns1','OpenNIC Resolver Sweden 01 - d0wn'], ['d0wn-se-ns1-ipv6','OpenNIC Resolver Sweden 01 over IPv6 - d0wn'], ['d0wn-sg-ns1','OpenNIC Resolver Singapore 01 - d0wn'], ['d0wn-sg-ns2','OpenNIC Resolver Singapore 02 - d0wn'], ['d0wn-sg-ns2-ipv6','OpenNIC Resolver Singapore 01 over IPv6 - d0wn'], ['d0wn-tz-ns1','OpenNIC Resolver Tanzania 01 - d0wn'], ['d0wn-ua-ns1','OpenNIC Resolver Ukraine 01 - d0wn'], ['d0wn-ua-ns1-ipv6','OpenNIC Resolver Ukraine 01 over IPv6 - d0wn'], ['d0wn-uk-ns1','OpenNIC Resolver United Kingdom 01 - d0wn'], ['d0wn-uk-ns1-ipv6','OpenNIC Resolver United Kingdom 01 over IPv6 - d0wn'], ['d0wn-us-ns1','OpenNIC Resolver United States of America 01 - d0wn'], ['d0wn-us-ns1-ipv6','OpenNIC Resolver United States of America 01 over IPv6 - d0wn'], ['d0wn-us-ns2','OpenNIC Resolver United States of America 02 - d0wn'], ['d0wn-us-ns2-ipv6','OpenNIC Resolver United States of America 02 over IPv6 - d0wn'], ['dns-freedom','DNS Freedom'], ['dnscrypt.eu-dk','DNSCrypt.eu Denmark'], ['dnscrypt.eu-dk-ipv6','DNSCrypt.eu Denmark over IPv6'], ['dnscrypt.eu-nl','DNSCrypt.eu Holland'], ['dnscrypt.eu-nl-ipv6','DNSCrypt.eu Holland over IPv6'], ['dnscrypt.org-fr','DNSCrypt.org France'], ['fvz-anyone','Primary OpenNIC Anycast DNS Resolver'], ['fvz-anyone-ipv6','Primary OpenNIC Anycast DNS IPv6 Resolver'], ['fvz-anytwo','Secondary OpenNIC Anycast DNS Resolver'], ['fvz-anytwo-ipv6','Secondary OpenNIC Anycast DNS IPv6 Resolver'], ['ipredator','Ipredator.se Server'], ['ns0.dnscrypt.is','ns0.dnscrypt.is in Reykjav???k, Iceland'], ['okturtles','okTurtles'], ['opennic-tumabox','TumaBox'], ['ovpnse','OVPN.se Integritet AB'], ['soltysiak','Soltysiak'], ['soltysiak-ipv6','Soltysiak over IPv6'], ['ventricle.us','Anatomical DNS'], ['yandex','Yandex']];
		var option_status_inter = [['0', '?????????'], ['5', '5s'], ['10', '10s'], ['15', '15s'], ['30', '30s'], ['60', '60s']];
		var option_sleep = [['0', '0s'], ['5', '5s'], ['10', '10s'], ['15', '15s'], ['30', '30s'], ['60', '60s']];
		var option_ss_obfs = [['0','??????'],['tls','tls'],['http','http']];
		var option_lb_policy = [['1', '????????????'], ['2', '????????????'], ['3', '????????????']];
		var option_lb_policy_name = ['', '????????????', '????????????', '????????????'];
		var ssbasic = ["mode", "server", "port", "password", "method", "ss_obfs", "ss_obfs_host" ];
		var ssrbasic = ["mode", "server", "port", "password", "method", "rss_protocal", "rss_protocal_para", "rss_obfs", "rss_obfs_para"];
		var ssconf = ["ssconf_basic_mode_", "ssconf_basic_name_", "ssconf_basic_server_", "ssconf_basic_port_", "ssconf_basic_password_", "ssconf_basic_method_", "ssconf_basic_ss_obfs_", "ssconf_basic_ss_obfs_host_" ];
		var ssrconf = ["ssrconf_basic_mode_", "ssrconf_basic_name_", "ssrconf_basic_server_", "ssrconf_basic_port_", "ssrconf_basic_password_", "ssrconf_basic_method_", "ssrconf_basic_rss_protocal_", "ssrconf_basic_rss_protocal_para_", "ssrconf_basic_rss_obfs_", "ssrconf_basic_rss_obfs_para_"];
		var option_kcp_mode = [['manual', 'manual'], ['normal', 'normal'], ['fast', 'fast'], ['fast2', 'fast2'], ['fast3', 'fast3']];
		var option_kcp_crypt =[['aes', 'aes'], ['aes-128', 'aes-128'], ['aes-192', 'aes-192'], ['salsa20', 'salsa20'], ['blowfish', 'blowfish'], ['twofish', 'twofish'], ['cast5', 'cast5'], ['3des', '3des'], ['tea', 'tea'], ['xtea', 'xtea'], ['xor', 'xor'], ['none', 'none']];
		var option_arp_list = [];
		var option_arp_local = [];
		var option_arp_web = [];
		var option_node_name = [];
		var option_node_addr = [];
		var wans =[];
		var wans2 = [];
		var ss_lb_nodes =[];
		var ssr_lb_nodes =[];
		var wans_value =[];
		var wans_name =[];
		var softcenter = 0;
		var option_day_time = [["7", "??????"], ["1", "??????"], ["2", "??????"], ["3", "??????"], ["4", "??????"], ["5", "??????"], ["6", "??????"], ["0", "??????"]];
		var option_hour_time = [];
		for(var i = 0; i < 24; i++){
			option_hour_time[i] = [i, i + "???"];
		}
		var select_style="min-width:182px;max-width:182px";
		var input_style="min-width:182px;max-width:182px";
		if (typeof btoa == "Function") {
			Base64 = {
				encode: function(e) {
					return btoa(e);
				},
				decode: function(e) {
					return atob(e);
				}
			};
		} else {
			Base64 = {
				_keyStr: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
				encode: function(e) {
					var t = "";
					var n, r, i, s, o, u, a;
					var f = 0;
					e = Base64._utf8_encode(e);
					while (f < e.length) {
						n = e.charCodeAt(f++);
						r = e.charCodeAt(f++);
						i = e.charCodeAt(f++);
						s = n >> 2;
						o = (n & 3) << 4 | r >> 4;
						u = (r & 15) << 2 | i >> 6;
						a = i & 63;
						if (isNaN(r)) {
							u = a = 64
						} else if (isNaN(i)) {
							a = 64
						}
						t = t + this._keyStr.charAt(s) + this._keyStr.charAt(o) + this._keyStr.charAt(u) + this._keyStr.charAt(a)
					}
					return t
				},
				decode: function(e) {
					var t = "";
					var n, r, i;
					var s, o, u, a;
					var f = 0;
					if (typeof(e) == "undefined"){
						return t = "";
					}
					e = e.replace(/[^A-Za-z0-9\+\/\=]/g, "");
					while (f < e.length) {
						s = this._keyStr.indexOf(e.charAt(f++));
						o = this._keyStr.indexOf(e.charAt(f++));
						u = this._keyStr.indexOf(e.charAt(f++));
						a = this._keyStr.indexOf(e.charAt(f++));
						n = s << 2 | o >> 4;
						r = (o & 15) << 4 | u >> 2;
						i = (u & 3) << 6 | a;
						t = t + String.fromCharCode(n);
						if (u != 64) {
							t = t + String.fromCharCode(r)
						}
						if (a != 64) {
							t = t + String.fromCharCode(i)
						}
					}
					t = Base64._utf8_decode(t);
					return t
				},
				_utf8_encode: function(e) {
					e = e.replace(/\r\n/g, "\n");
					var t = "";
					for (var n = 0; n < e.length; n++) {
						var r = e.charCodeAt(n);
						if (r < 128) {
							t += String.fromCharCode(r)
						} else if (r > 127 && r < 2048) {
							t += String.fromCharCode(r >> 6 | 192);
							t += String.fromCharCode(r & 63 | 128)
						} else {
							t += String.fromCharCode(r >> 12 | 224);
							t += String.fromCharCode(r >> 6 & 63 | 128);
							t += String.fromCharCode(r & 63 | 128)
						}
					}
					return t
				},
				_utf8_decode: function(e) {
					var t = "";
					var n = 0;
					var r = c1 = c2 = 0;
					while (n < e.length) {
						r = e.charCodeAt(n);
						if (r < 128) {
							t += String.fromCharCode(r);
							n++
						} else if (r > 191 && r < 224) {
							c2 = e.charCodeAt(n + 1);
							t += String.fromCharCode((r & 31) << 6 | c2 & 63);
							n += 2
						} else {
							c2 = e.charCodeAt(n + 1);
							c3 = e.charCodeAt(n + 2);
							t += String.fromCharCode((r & 15) << 12 | (c2 & 63) << 6 | c3 & 63);
							n += 3
						}
					}
					return t
				}
			}
		}
		function createFormFields(data, settings) {
			var id, id1, common, output, form = '';
			var s = $.extend({
					// Defaults
					'align': 'left',
					'grid': ['col-sm-3', 'col-sm-9']
				},
				settings);
			// Loop through array
			$.each(data,
				function(key, v) {
					if (!v) {
						form += '<br />';
						return;
					}
					if (v.ignore) return;
					form += '<fieldset' + ((v.rid) ? ' id="' + v.rid + '"' : '') + ((v.hidden) ? ' style="display: none;"' : '') + '>';
					if (v.help) {
						v.title += ' (<i data-toggle="tooltip" class="icon-info icon-normal" title="' + v.help + '"></i>)';
					}
					if (v.text) {
						if (v.title) {
							form += '<label class="' + s.grid[0] + ' ' + ((s.align == 'center') ? 'control-label' : 'control-left-label') + '">' + v.title + '</label><div class="' + s.grid[1] + ' text-block">' + v.text + '</div></fieldset>';
						} else {
							form += '<label class="' + s.grid[0] + ' ' + ((s.align == 'center') ? 'control-label' : 'control-left-label') + '">' + v.text + '</label></fieldset>';
						}
						return;
					}
					if (v.multi) multiornot = v.multi;
					else multiornot = [v];
					output = '';
					$.each(multiornot,
						function(key, f) {
							if ((f.type == 'radio') && (!f.id)) id = '_' + f.name + '_' + i;
							else id = (f.id ? f.id : ('_' + f.name));
							if (id1 == '') id1 = id;
							common = ' onchange="verifyFields(this, 1)" id="' + id + '"';
							if (f.size > 65) common += ' style="width: 100%; display: block;"';
							if (f.hidden) common += ' style="display:none;"'; //add by sadog
							if (f.attrib) common += ' ' + f.attrib;
							name = f.name ? (' name="' + f.name + '"') : '';
							// Prefix
							if (f.prefix) output += f.prefix;
							switch (f.type) {
								case 'checkbox':
									output += '<div class="checkbox c-checkbox"><label><input class="custom" type="checkbox"' + name + (f.value ? ' checked' : '') + ' onclick="verifyFields(this, 1)"' + common + '>\
		<span></span> ' + (f.suffix ? f.suffix : '') + '</label></div>';
									break;
								case 'radio':
									output += '<div class="radio c-radio"><label><input class="custom" type="radio"' + name + (f.value ? ' checked' : '') + ' onclick="verifyFields(this, 1)"' + common + '>\
		<span></span> ' + (f.suffix ? f.suffix : '') + '</label></div>';
									break;
								case 'password':
									if (f.peekaboo) {
										switch (get_config('web_pb', '1')) {
											case '0':
												f.type = 'text';
											case '2':
												f.peekaboo = 0;
												break;
										}
									}
									if (f.type == 'password') {
										common += ' autocomplete="off"';
										if (f.peekaboo) common += ' onfocus=\'peekaboo("' + id + '",1)\' onclick=\'this.removeAttribute(' + 'readonly' + ');\' readonly="true"';
									}
									// drop
								case 'text':
									output += '<input type="' + f.type + '"' + name + ' value="' + escapeHTML(UT(f.value)) + '" maxlength=' + f.maxlen + (f.size ? (' size=' + f.size) : '') + (f.style ? (' style=' + f.style) : '') + (f.onblur ? (' onblur=' + f.onblur) : '') + common + '>';
									break;
								case 'select':
									output += '<select' + name + (f.style ? (' style=' + f.style) : '') + common + '>';
									for (optsCount = 0; optsCount < f.options.length; ++optsCount) {
										a = f.options[optsCount];
										if (a.length == 1) a.push(a[0]);
										output += '<option value="' + a[0] + '"' + ((a[0] == f.value) ? ' selected' : '') + '>' + a[1] + '</option>';
									}
									output += '</select>';
									break;
								case 'textarea':
									output += '<textarea ' + (f.style ? (' style="' + f.style + '" ') : '') + name + common + (f.wrap ? (' wrap=' + f.wrap) : '') + '>' + escapeHTML(UT(f.value)) + '</textarea>';
									break;
								default:
									if (f.custom) output += f.custom;
									break;
							}
							if (f.suffix && (f.type != 'checkbox' && f.type != 'radio')) output += '<span class="help-block">' + f.suffix + '</span>';
						});
					if (id1 != '') form += '<label class="' + s.grid[0] + ' ' + ((s.align == 'center') ? 'control-label' : 'control-left-label') + '" for="' + id + '">' + v.title + '</label><div class="' + s.grid[1] + '">' + output;
					else form += '<label>' + v.title + '</label>';
					form += '</div></fieldset>';
				});
			return form;
		}
		//============================================
		var ss_node = new TomatoGrid();
		ss_node.dataToView = function(data) {
			return [ data[0], option_mode_name[data[1]], data[2] || "??????" + data.length, data[3], data[4], data[5], data[6], (data[7] == 0 ? "" : data[7]), data[8], data[9]];
		}
		ss_node.verifyFields = function( row, quiet ) {
			//E('_ss_node-grid_1').style.display = "none";
			//E('_ss_node-grid_10').style.display = "none";
			var f = fields.getAll( row );
			return v_iptaddr( f[3], quiet ) && v_port( f[4], quiet );
		}
		ss_node.resetNewEditor = function() {
			var f;
			f = fields.getAll( this.newEditor );
			ferror.clearAll( f );
			f[ 0 ].value   = '';
			f[ 1 ].selectedIndex   = '';
			f[ 2 ].value   = '';
			f[ 3 ].value   = '';
			f[ 4 ].value   = '';
			f[ 5 ].value   = '';
			f[ 6 ].selectedIndex   = '';
			f[ 7 ].selectedIndex   = '';
			f[ 8 ].value   = '';
			f[ 9 ].value   = '';
		}
		ss_node.sortCompare = function(a, b) {
			var obj = TGO(a);
			var col = obj.sortColumn;
			if(col == 0 || col == 4){ //add by sasdog
				var r = cmpText(parseInt(a.cells[col].innerHTML), parseInt(b.cells[col].innerHTML));
			}else{
				var r = cmpText(a.cells[col].innerHTML, b.cells[col].innerHTML);
			}
			return obj.sortAscending ? r : -r;
		}

		ss_node.rpMo = function(img, e) {
			var me;
			e = PR(e);
			me = TGO(e);
			if (me.moving == e) {
				me.moving = null;
				this.rpHide();
				return;
			}
			me.moving = e;
			img.style.border = "3px solid red";
		}
		ss_node.onClick = function(cell) {
			if (this.canEdit) {
				if (this.moving) {
					var p = this.moving.parentNode;
					var q = PR(cell);
					if (this.moving != q) {
						var v = this.moving.rowIndex > q.rowIndex;
						p.removeChild(this.moving);
						if (v) p.insertBefore(this.moving, q);
						else p.insertBefore(this.moving, q.nextSibling);
						this.recolor();
					}
					this.moving = null;
					this.rpHide();
					return;
				}
				this.edit(cell);
				$("#ss_node-grid > tbody > tr.odd > td:nth-child(1)").hide();
				$("#ss_node-grid > tbody > tr.even > td:nth-child(1)").hide();
				$("#ss_node-grid > tbody > tr.editor > td:nth-child(1)").hide();
				$("#ss_node-grid > tbody > tr:nth-child(1) > td.header.co1").hide();
				$("#ss_node-grid > tbody > tr > td:nth-child(6)").show();
				$("#ss_node-grid > tbody > tr > td:nth-child(9)").show();
				$("#ss_node-grid > tbody > tr > td:nth-child(10)").hide();
			}
		}
		ss_node.onDelete = function() {
			this.removeEditor();
			var del_ss_node = parseInt(this.source.cells[0].innerHTML);
			var cur_sel_node = parseInt(dbus["ss_basic_node"]);
			var cur_kcp_node = parseInt(dbus["ss_kcp_node"]);
			if (del_ss_node == cur_sel_node){
				alert("????????????????????????\n??????????????????????????????????????????????????????????????????????????????\n?????????????????????????????????????????????????????????????????????");
			}
			if (del_ss_node == cur_kcp_node){
				alert("?????????????????????????????????KCP???????????????\n????????????????????????KCP??????");
				dbus["ss_kcp_node"] = "";
			}
			elem.remove(this.source);
			this.source = null;
			this.disableNewEditor(false);
			dbus["ssconf_basic_node_max"] = this.tb.rows.length - 3 //addby sadog
			dbus["ssconf_basic_max_node"] = parseInt(this.tb.rows[this.tb.rows.length -3].cells[0].innerHTML) //addby sadog
		}
		ss_node.rpDel = function(e) {
			e = PR(e);
			var del_ss_node = parseInt(e.cells[0].innerHTML);
			var cur_sel_node = parseInt(dbus["ss_basic_node"]);
			var cur_kcp_node = parseInt(dbus["ss_kcp_node"]);
			if (del_ss_node == cur_sel_node){
				alert("????????????????????????\n??????????????????\n????????????????????????ss????????????????????????????????????");
				return false;
			}
			if (del_ss_node == cur_kcp_node){
				alert("?????????????????????????????????KCP???????????????????????????????????????KCP??????");
				dbus["ss_kcp_node"] = "";
			}
			TGO(e).moving = null;
			e.parentNode.removeChild(e);
			this.recolor();
			this.rpHide();
			dbus["ssconf_basic_node_max"] = this.tb.rows.length - 3 //addby sadog
			dbus["ssconf_basic_max_node"] = parseInt(this.tb.rows[this.tb.rows.length -3].cells[0].innerHTML) //addby sadog
		}
		ss_node.rpMouIn = function(evt) {
			var e, x, ofs, me, s, n;
			if ((evt = checkEvent(evt)) == null || evt.target.nodeName == 'A' || evt.target.nodeName == 'I') return;
			me = TGO(evt.target);
			if (me.isEditing()) return;
			if (me.moving) return;
			if (evt.target.id != 'table-row-panel') {
				me.rpHide();
			}
			e = document.createElement('div');
			e.tgo = me;
			e.ref = evt.target;
			e.setAttribute('id', 'table-row-panel');
			n = 0;
			s = '';
			if (me.canMove) {
				s = '<a class="move-up-row" href="#" onclick="this.parentNode.tgo.rpUp(this.parentNode.ref); return false;" title="??????"><i class="icon-chevron-up"></i></a> \
				<a class="move-down-row" href="#" onclick="this.parentNode.tgo.rpDn(this.parentNode.ref); return false;" title="??????"><i class="icon-chevron-down"></i></a> \
				<a class="move-row" href="#" onclick="this.parentNode.tgo.rpMo(this,this.parentNode.ref); return false;" title="??????"><i class="icon-move"></i></a> ';
				n += 3;
			}
			if (me.canDelete) {
				s += '<a class="delete-row" href="#" onclick="this.parentNode.tgo.rpDel(this.parentNode.ref); return false;" title="??????"><i class="icon-cancel"></i></a>';
				s += '<a class="apply-row" href="#" onclick="this.parentNode.tgo.rpApply(this.parentNode.ref); return false;" title="??????"><i class="icon-check"></i></a>';
				++n;
			}
			x = PR(evt.target);
			x = x.cells[x.cells.length - 1];
			ofs = elem.getOffset(x);
			n *= 18;
			e.innerHTML = s;
			this.appendChild(e);
		}
		ss_node.rpApply = function(e) {
			e = PR(e);
			var apply_ss_node = parseInt(e.cells[0].innerHTML);
			E("_ss_basic_node").value = apply_ss_node;
			if (confirm("?????????????????????????")) {
				auto_node_sel();
				verifyFields();
				save();
			} else {
				return false;
			}
		}
		ss_node.onAdd = function() {
			var data;
			this.moving = null;
			this.rpHide();
			if (!this.verifyFields(this.newEditor, false)) return;
			data = this.fieldValuesToData(this.newEditor); 
			data[0] = String(parseInt(this.tb.rows[this.tb.rows.length - 3].cells[0].innerHTML) + 1 || 0 + 1); //addby sadog
			this.insertData(-1, data);
			this.disableNewEditor(false);
			this.resetNewEditor();
			dbus["ssconf_basic_node_max"] = this.tb.rows.length -3 //addby sadog
			dbus["ssconf_basic_max_node"] = parseInt(this.tb.rows[this.tb.rows.length -3].cells[0].innerHTML) //addby sadog
		}
		ss_node.insert = function(at, data, cells, escCells) {
			var e, i;
			if ((this.footer) && (at == -1)) at = this.footer.rowIndex;
			e = this._insert(at, cells, escCells);
			e.className = (e.rowIndex & 1) ? 'even' : 'odd';
			if ((parseInt(dbus["ss_basic_node"]) == parseInt(e.cells[0].innerHTML)) && dbus["ss_basic_enable"] == 1){
				e.className = (e.rowIndex & 1) ? 'even use' : 'odd use';
			}
			for (i = 0; i < e.cells.length; ++i) {
				e.cells[i].onclick = function() {
					return TGO(this).onClick(this);
				};
			}
			e._data = data;
			e.getRowData = function() {
				return this._data;
			}
			e.setRowData = function(data) {
				this._data = data;
			}
			if ((this.canMove) || (this.canEdit) || (this.canDelete)) {
				e.onmouseover = this.rpMouIn;
				e.onmouseout = this.rpMouOut;
				if (this.canEdit) e.title = '????????????';
				$(e).css('cursor', 'text');
			}
			return e;
		}
		ss_node.recolor = function() {
			var i, e, o;
			i = this.header ? this.header.rowIndex + 1 : 0;
			e = this.footer ? this.footer.rowIndex : this.tb.rows.length;
			for (; i < e; ++i) {
				o = this.tb.rows[i];
				o.className = (o.rowIndex & 1) ? 'even' : 'odd';
				if ((parseInt(dbus["ss_basic_node"]) == parseInt(o.cells[0].innerHTML)) && dbus["ss_basic_enable"] == 1){
					o.className = (o.rowIndex & 1) ? 'even use' : 'odd use';
				}
			}
		}
		ss_node.createEditor = function(which, rowIndex, source) {
			var values;
			if (which == 'edit') values = this.dataToFieldValues(source.getRowData());
			var row = this.tb.insertRow(rowIndex);
			row.className = 'editor';
			var common = ' onkeypress="return TGO(this).onKey(\'' + which + '\', event)" onchange="TGO(this).onChange(\'' + which + '\', this)"';
			var common_b = ' onclick="return TGO(this).onKey(\'' + which + '\', event)" onchange="TGO(this).onChange(\'' + which + '\', this)"';
			var vi = 0;
			for (var i = 0; i < this.editorFields.length; ++i) {
				var s = '';
				var ef = this.editorFields[i].multi;
				if (!ef) ef = [this.editorFields[i]];
				for (var j = 0; j < ef.length; ++j) {
					var f = ef[j];
					if (f.prefix) s += f.prefix;
					var attrib = ' class="fi' + (vi + 1) + ' ' + (f['class'] ? f['class'] : '') + '" ' + (f.attrib || '');
					var id = (this.tb ? ('_' + this.tb.id + '_' + (vi + 1)) : null);
					if (id) attrib += ' id="' + id + '"';
					switch (f.type) {
						case 'password':
							if (f.peekaboo) {
								switch (get_config('web_pb', '1')) {
									case '0':
										f.type = 'text';
									case '2':
										f.peekaboo = 0;
										break;
								}
							}
							attrib += ' autocomplete="off"';
							if (f.peekaboo && id) attrib += ' onfocus=\'peekaboo("' + id + '",1)\'';
							// drop
						case 'text':
							s += '<input type="' + f.type + '" maxlength=' + f.maxlen + common + attrib;
							if (which == 'edit') s += ' value="' + escapeHTML('' + values[vi]) + '">';
							else s += '>';
							break;
						case 'select':
							s += '<select' + common + attrib + '>';
							for (var k = 0; k < f.options.length; ++k) {
								a = f.options[k];
								if (which == 'edit') {
									s += '<option value="' + a[0] + '"' + ((a[0] == values[vi]) ? ' selected>' : '>') + a[1] + '</option>';
								} else {
									s += '<option value="' + a[0] + '">' + a[1] + '</option>';
								}
							}
							s += '</select>';
							break;
						case 'checkbox':
							s += '<div class="checkbox c-checkbox"><label><input type="checkbox"' + common + attrib;
							if ((which == 'edit') && (values[vi])) s += ' checked';
							s += '><span></span> </label></div>';
							break;
						case 'textarea':
							if (which == 'edit') {
								document.getElementById(f.proxy).value = values[vi];
							}
							break;
						default:
							s += f.custom.replace(/\$which\$/g, which);
					}
					if (f.suffix) s += f.suffix;
					++vi;
				}
				var c = row.insertCell(i);
				c.innerHTML = s;
				// Added verticalAlignment, this fixes the incorrect vertical positioning of inputs in the editorRow
				if (this.editorFields[i].vtop) {
					c.vAlign = 'top';
					c.style.verticalAlign = "top";
				}
			}
			return row;
		}
		ss_node.disableNewEditor = function(disable) {
			if (this.getDataCount() >= this.maxAdd) disable = true;
			if (this.newEditor) fields.disableAll(this.newEditor, disable);
			if (this.newControls) fields.disableAll(this.newControls, disable);
			$("#ss_node-grid > tbody > tr > td:nth-child(1)").show();
			$("#ss_node-grid > tbody > tr > td:nth-child(6)").hide();
			$("#ss_node-grid > tbody > tr > td:nth-child(9)").hide();
			$("#ss_node-grid > tbody > tr > td:nth-child(10)").show();
		}
		ss_node.setup = function() {
			this.init( 'ss_node-grid', 'move, sort', 500, [
				{ type: 'text', maxlen: 5 },
				{ type: 'select', options:option_mode,value:'' },
				{ type: 'text', maxlen: 50 },
				{ type: 'text', maxlen: 50 },
				{ type: 'text', maxlen: 50, size:4 },
				{ type: 'text', maxlen: 50 },
				{ type: 'select', options:option_method,value:''},
				{ type: 'select', options:option_ss_obfs,value:''},
				{ type: 'text', maxlen: 50 },
				{ type: 'text', maxlen: 50 }
			] );
			this.headerSet( [ '??????',  '??????', '????????????', '???????????????', '??????', '??????', '????????????', '??????(AEAD)', '???????????????', 'ping' ] );
			for ( var i = 1; i <= dbus["ssconf_basic_node_max"]; i++){
				var t1 = [
					String(i),
					dbus["ssconf_basic_mode_" + i ],
					dbus["ssconf_basic_name_" + i ],
					dbus["ssconf_basic_server_" + i ],
					dbus["ssconf_basic_port_" + i ],
					dbus["ssconf_basic_password_" + i ],
					dbus["ssconf_basic_method_" + i ],
					dbus["ssconf_basic_ss_obfs_" + i ] || "??????",
					dbus["ssconf_basic_ss_obfs_host_" + i ] || " ",
					" "
					]
				if ( t1.length == 10 ) this.insertData( -1, t1 );
			}
			this.showNewEditor();
			this.resetNewEditor();
			// hide edit td 1 12
			E('_ss_node-grid_1').style.display = "none";
			E('_ss_node-grid_10').style.display = "none";
			// add placeholder for input
			$("#ss_node-grid #_ssr_node-grid_3").attr("placeholder", "?????????")
			$("#ss_node-grid #_ssr_node-grid_4").attr("placeholder", "??????")
			$("#ss_node-grid #_ssr_node-grid_5").attr("placeholder", "??????")
			$("#ss_node-grid #_ssr_node-grid_6").attr("placeholder", "??????")
			$("#ss_node-grid #_ssr_node-grid_9").attr("placeholder", "????????????")
			// adjust width
			$("#ss_node-grid > tbody > tr > td:nth-child(5)").css("width", "100px");
			// hide some info less column
			if(dbus["ssconf_basic_node_max"]){
				$("#ss_node-grid > tbody > tr > td:nth-child(6)").hide();
				$("#ss_node-grid > tbody > tr > td:nth-child(9)").hide();
			}else{
				$("#ss_node-grid > tbody > tr.odd > td:nth-child(1)").hide();
				$("#ss_node-grid > tbody > tr.even > td:nth-child(1)").hide();
				$("#ss_node-grid > tbody > tr.editor > td:nth-child(1)").hide();
				$("#ss_node-grid > tbody > tr:nth-child(1) > td.header.co1").hide();
				$("#ss_node-grid > tbody > tr > td:nth-child(6)").show();
				$("#ss_node-grid > tbody > tr > td:nth-child(9)").show();
				$("#ss_node-grid > tbody > tr > td:nth-child(10)").hide();
			}

			// when adding node, make all usedfull colum visible
			$("#ss_node-grid > tbody > tr.editor").click(
				function() {
				$("#ss_node-grid > tbody > tr.odd > td:nth-child(1)").hide();
				$("#ss_node-grid > tbody > tr.even > td:nth-child(1)").hide();
				$("#ss_node-grid > tbody > tr.editor > td:nth-child(1)").hide();
				$("#ss_node-grid > tbody > tr:nth-child(1) > td.header.co1").hide();
				$("#ss_node-grid > tbody > tr > td:nth-child(6)").show();
				$("#ss_node-grid > tbody > tr > td:nth-child(9)").show();
				$("#ss_node-grid > tbody > tr > td:nth-child(10)").hide();
			});
		}
		//============================================
		var ssr_node = new TomatoGrid();
		ssr_node.verifyFields = function( row, quiet ) {
			var f = fields.getAll( row );
			return v_iptaddr( f[3], quiet ) && v_port( f[4], quiet ) && v_domain( f[10], quiet );
		}
		ssr_node.resetNewEditor = function() {
			var f;
			f = fields.getAll( this.newEditor );
			ferror.clearAll( f );
			f[ 0 ].value   = '';
			f[ 1 ].selectedIndex   = '';
			f[ 2 ].value   = '';
			f[ 3 ].value   = '';
			f[ 4 ].value   = '';
			f[ 5 ].value   = '';
			f[ 6 ].selectedIndex   = '';
			f[ 7 ].selectedIndex   = '';
			f[ 8 ].value   = '';
			f[ 9 ].selectedIndex   = '';
			f[ 10 ].value   = '';
			f[ 11 ].value   = '';
		}
		ssr_node.sortCompare = function(a, b) {
			var obj = TGO(a);
			var col = obj.sortColumn;
			if(col == 0 || col == 4){ //add by sasdog
				var r = cmpText(parseInt(a.cells[col].innerHTML), parseInt(b.cells[col].innerHTML));
			}else{
				var r = cmpText(a.cells[col].innerHTML, b.cells[col].innerHTML);
			}
			return obj.sortAscending ? r : -r;
		}
		ssr_node.rpMo = function(img, e) {
			var me;
			e = PR(e);
			me = TGO(e);
			if (me.moving == e) {
				me.moving = null;
				this.rpHide();
				return;
			}
			me.moving = e;
			img.style.border = "3px solid red";
		}
		ssr_node.onClick = function(cell) {
			if (this.canEdit) {
				if (this.moving) {
					var p = this.moving.parentNode;
					var q = PR(cell);
					if (this.moving != q) {
						var v = this.moving.rowIndex > q.rowIndex;
						p.removeChild(this.moving);
						if (v) p.insertBefore(this.moving, q);
						else p.insertBefore(this.moving, q.nextSibling);
						this.recolor();
					}
					this.moving = null;
					this.rpHide();
					return;
				}
				this.edit(cell);
				$("#ssr_node-grid > tbody > tr.odd > td:nth-child(1)").hide();
				$("#ssr_node-grid > tbody > tr.even > td:nth-child(1)").hide();
				$("#ssr_node-grid > tbody > tr.editor > td:nth-child(1)").hide();
				$("#ssr_node-grid > tbody > tr:nth-child(1) > td.header.co1").hide();
				$("#ssr_node-grid > tbody > tr > td:nth-child(6)").show();
				$("#ssr_node-grid > tbody > tr > td:nth-child(9)").show();
				$("#ssr_node-grid > tbody > tr > td:nth-child(11)").show();
				$("#ssr_node-grid > tbody > tr > td:nth-child(12)").hide();
			}
		}
		ssr_node.onDelete = function() {
			this.removeEditor();
			var del_ssr_node = parseInt(this.source.cells[0].innerHTML);
			var cur_sel_node = parseInt(dbus["ss_basic_node"]);
			var cur_kcp_node = parseInt(dbus["ss_kcp_node"]);
			if (del_ssr_node == (cur_sel_node - node_ss)){
				alert("????????????????????????\n??????????????????????????????????????????????????????????????????????????????\n?????????????????????????????????????????????????????????????????????");
			}
			if (del_ssr_node == (cur_kcp_node - node_ss)){
				alert("?????????????????????????????????KCP???????????????\n????????????????????????KCP??????");
				dbus["ss_kcp_node"] = "";
			}
			elem.remove(this.source);
			this.source = null;
			this.disableNewEditor(false);
			dbus["ssrconf_basic_node_max"] = this.tb.rows.length - 3 //addby sadog
			dbus["ssrconf_basic_max_node"] = parseInt(this.tb.rows[this.tb.rows.length -3].cells[0].innerHTML) //addby sadog
		}

		ssr_node.rpDel = function(e) {
			e = PR(e);
			var del_ssr_node = parseInt(e.cells[0].innerHTML);
			var cur_sel_node = parseInt(dbus["ss_basic_node"]);
			var cur_kcp_node = parseInt(dbus["ss_kcp_node"]);
			if (del_ssr_node == (cur_sel_node - node_ss)){
				alert("????????????????????????\n??????????????????\n????????????????????????ss????????????????????????????????????");
				return false;
			}
			if (del_ssr_node == (cur_kcp_node - node_ss)){
				alert("?????????????????????????????????KCP???????????????????????????????????????KCP??????");
				dbus["ss_kcp_node"] = "";
			}
			TGO(e).moving = null;
			e.parentNode.removeChild(e);
			this.recolor();
			this.rpHide();
			dbus["ssrconf_basic_node_max"] = this.tb.rows.length - 3 //addby sadog
			dbus["ssrconf_basic_max_node"] = parseInt(this.tb.rows[this.tb.rows.length -3].cells[0].innerHTML) //addby sadog
		}
		ssr_node.rpMouIn = function(evt) {
			var e, x, ofs, me, s, n;
			if ((evt = checkEvent(evt)) == null || evt.target.nodeName == 'A' || evt.target.nodeName == 'I') return;
			me = TGO(evt.target);
			if (me.isEditing()) return;
			if (me.moving) return;
			if (evt.target.id != 'table-row-panel') {
				me.rpHide();
			}
			e = document.createElement('div');
			e.tgo = me;
			e.ref = evt.target;
			e.setAttribute('id', 'table-row-panel');
			n = 0;
			s = '';
			if (me.canMove) {
				s = '<a class="move-up-row" href="#" onclick="this.parentNode.tgo.rpUp(this.parentNode.ref); return false;" title="??????"><i class="icon-chevron-up"></i></a> \
				<a class="move-down-row" href="#" onclick="this.parentNode.tgo.rpDn(this.parentNode.ref); return false;" title="??????"><i class="icon-chevron-down"></i></a> \
				<a class="move-row" href="#" onclick="this.parentNode.tgo.rpMo(this,this.parentNode.ref); return false;" title="??????"><i class="icon-move"></i></a> ';
				n += 3;
			}
			if (me.canDelete) {
				s += '<a class="delete-row" href="#" onclick="this.parentNode.tgo.rpDel(this.parentNode.ref); return false;" title="??????"><i class="icon-cancel"></i></a>';
				s += '<a class="apply-row" href="#" onclick="this.parentNode.tgo.rpApply(this.parentNode.ref); return false;" title="??????"><i class="icon-check"></i></a>';
				++n;
			}
			x = PR(evt.target);
			x = x.cells[x.cells.length - 1];
			ofs = elem.getOffset(x);
			n *= 18;
			e.innerHTML = s;
			this.appendChild(e);
			//setTimeout('$("#table-row-panel").remove();', 2000);
			//$("#table-row-panel").remove();
			//setTimeout('TGO(this).rpHide()', 2000);
		}
		//ssr_node.rpMouOut = function(e) {
		//	setTimeout('$("#table-row-panel").remove();', 2000);
		//}
		ssr_node.rpApply = function(e) {
			e = PR(e);
			var apply_ss_node = parseInt(e.cells[0].innerHTML);
			E("_ss_basic_node").value = apply_ss_node + node_ss;
			if (confirm("?????????????????????????")) {
				auto_node_sel();
				verifyFields();
				save();
			} else {
				return false;
			}
		}
		ssr_node.onAdd = function() {
			var data;
			this.moving = null;
			this.rpHide();
			if (!this.verifyFields(this.newEditor, false)) return;
			data = this.fieldValuesToData(this.newEditor); 
			data[0] = String(parseInt(this.tb.rows[this.tb.rows.length - 3].cells[0].innerHTML) + 1 || 0 + 1); //addby sadog
			this.insertData(-1, data);
			this.disableNewEditor(false);
			this.resetNewEditor();
			dbus["ssrconf_basic_node_max"] = this.tb.rows.length -3 //addby sadog
			dbus["ssrconf_basic_max_node"] = parseInt(this.tb.rows[this.tb.rows.length -3].cells[0].innerHTML) //addby sadog
		}
		ssr_node.insert = function(at, data, cells, escCells) {
			var e, i;
			if ((this.footer) && (at == -1)) at = this.footer.rowIndex;
			e = this._insert(at, cells, escCells);
			e.className = (e.rowIndex & 1) ? 'even' : 'odd';
			if ((parseInt(dbus["ss_basic_node"]) == parseInt(e.cells[0].innerHTML) + node_ss) && dbus["ss_basic_enable"] == 1){
				e.className = (e.rowIndex & 1) ? 'even use' : 'odd use';
			}
			for (i = 0; i < e.cells.length; ++i) {
				e.cells[i].onclick = function() {
					return TGO(this).onClick(this);
				};
			}
			e._data = data;
			e.getRowData = function() {
				return this._data;
			}
			e.setRowData = function(data) {
				this._data = data;
			}
			if ((this.canMove) || (this.canEdit) || (this.canDelete)) {
				e.onmouseover = this.rpMouIn;
				e.onmouseout = this.rpMouOut;
				if (this.canEdit) e.title = '????????????';
				$(e).css('cursor', 'text');
			}
			return e;
		}
		ssr_node.recolor = function() {
			var i, e, o;
			i = this.header ? this.header.rowIndex + 1 : 0;
			e = this.footer ? this.footer.rowIndex : this.tb.rows.length;
			for (; i < e; ++i) {
				o = this.tb.rows[i];
				o.className = (o.rowIndex & 1) ? 'even' : 'odd';
				if ((parseInt(dbus["ss_basic_node"]) == parseInt(o.cells[0].innerHTML) + node_ss) && dbus["ss_basic_enable"] == 1){
					o.className = (o.rowIndex & 1) ? 'even use' : 'odd use';
				}
			}
		}
		ssr_node.createEditor = function(which, rowIndex, source) {
			var values;
			if (which == 'edit') values = this.dataToFieldValues(source.getRowData());
			var row = this.tb.insertRow(rowIndex);
			row.className = 'editor';
			var common = ' onkeypress="return TGO(this).onKey(\'' + which + '\', event)" onchange="TGO(this).onChange(\'' + which + '\', this)"';
			var vi = 0;
			for (var i = 0; i < this.editorFields.length; ++i) {
				var s = '';
				var ef = this.editorFields[i].multi;
				if (!ef) ef = [this.editorFields[i]];
				for (var j = 0; j < ef.length; ++j) {
					var f = ef[j];
					if (f.prefix) s += f.prefix;
					var attrib = ' class="fi' + (vi + 1) + ' ' + (f['class'] ? f['class'] : '') + '" ' + (f.attrib || '');
					var id = (this.tb ? ('_' + this.tb.id + '_' + (vi + 1)) : null);
					if (id) attrib += ' id="' + id + '"';
					switch (f.type) {
						case 'password':
							if (f.peekaboo) {
								switch (get_config('web_pb', '1')) {
									case '0':
										f.type = 'text';
									case '2':
										f.peekaboo = 0;
										break;
								}
							}
							attrib += ' autocomplete="off"';
							if (f.peekaboo && id) attrib += ' onfocus=\'peekaboo("' + id + '",1)\'';
							// drop
						case 'text':
							s += '<input type="' + f.type + '" maxlength=' + f.maxlen + common + attrib;
							if (which == 'edit') s += ' value="' + escapeHTML('' + values[vi]) + '">';
							else s += '>';
							break;
						case 'select':
							s += '<select' + common + attrib + '>';
							for (var k = 0; k < f.options.length; ++k) {
								a = f.options[k];
								if (which == 'edit') {
									s += '<option value="' + a[0] + '"' + ((a[0] == values[vi]) ? ' selected>' : '>') + a[1] + '</option>';
								} else {
									s += '<option value="' + a[0] + '">' + a[1] + '</option>';
								}
							}
							s += '</select>';
							break;
						case 'checkbox':
							s += '<div class="checkbox c-checkbox"><label><input type="checkbox"' + common + attrib;
							if ((which == 'edit') && (values[vi])) s += ' checked';
							s += '><span></span> </label></div>';
							break;
						case 'textarea':
							if (which == 'edit') {
								document.getElementById(f.proxy).value = values[vi];
							}
							break;
						default:
							s += f.custom.replace(/\$which\$/g, which);
					}
					if (f.suffix) s += f.suffix;
					++vi;
				}
				var c = row.insertCell(i);
				c.innerHTML = s;
				// Added verticalAlignment, this fixes the incorrect vertical positioning of inputs in the editorRow
				if (this.editorFields[i].vtop) {
					c.vAlign = 'top';
					c.style.verticalAlign = "top";
				}
			}
			return row;
		}
		ssr_node.disableNewEditor = function(disable) {
			if (this.getDataCount() >= this.maxAdd) disable = true;
			if (this.newEditor) fields.disableAll(this.newEditor, disable);
			if (this.newControls) fields.disableAll(this.newControls, disable);
			$("#ssr_node-grid > tbody > tr > td:nth-child(1)").show();
			$("#ssr_node-grid > tbody > tr > td:nth-child(6)").hide();
			$("#ssr_node-grid > tbody > tr > td:nth-child(9)").hide();
			$("#ssr_node-grid > tbody > tr > td:nth-child(11)").hide();
			$("#ssr_node-grid > tbody > tr > td:nth-child(12)").show();
		}
		ssr_node.insertData = function(at, data, i) {
			return this.insert(at, data, this.dataToView(data, i), false);
		}
		ssr_node.dataToView = function(data, i) {
			//var option_mode_name = ['', 'GFW', 'CHN', 'GAME', 'GLOABLE'];
			return [ data[0], option_mode_name[data[1]], 
					dbus["ssrconf_basic_group_" + i ] ? "???" + dbus["ssrconf_basic_group_" + i ] + "???" + dbus["ssrconf_basic_name_" + i ] : dbus["ssrconf_basic_name_" + i ]||data[2],
					data[3], data[4], data[5], data[6], data[7], (data[8].length > 1 ? "******" : ""), data[9], data[10], data[11]];
		}
		ssr_node.setup = function() {
			this.init( 'ssr_node-grid', 'sort, move', 500, [
				{ type: 'text', maxlen: 5 },
				{ type: 'select',maxlen:20,options:option_mode,value:'' },
				{ type: 'text', maxlen: 50 },
				{ type: 'text', maxlen: 50 },
				{ type: 'text', maxlen: 50 },
				{ type: 'text', maxlen: 50 },
				{ type: 'select',maxlen:40,options:option_method,value:''},
				{ type: 'select',maxlen:40,options:option_ssr_protocal,value:''},
				{ type: 'text', maxlen: 50 },
				{ type: 'select',maxlen:40,options:option_ssr_obfs,value:''},
				{ type: 'text', maxlen: 512 },
				{ type: 'text', maxlen: 512 }
			] );
			this.headerSet( [ '??????', '??????', '????????????', '???????????????', '??????', '??????', '????????????', '??????', '????????????', '??????', '????????????', 'ping' ] );
			for ( var i = 1; i <= dbus["ssrconf_basic_node_max"]; i++){
				var t2 = [
						String(i),
						dbus["ssrconf_basic_mode_" + i ], 
						dbus["ssrconf_basic_name_" + i ], 
						dbus["ssrconf_basic_server_" + i ], 
						dbus["ssrconf_basic_port_" + i ], 
						dbus["ssrconf_basic_password_" + i ], 
						dbus["ssrconf_basic_method_" + i ],
						dbus["ssrconf_basic_rss_protocal_" + i ],
						dbus["ssrconf_basic_rss_protocal_para_" + i ] || "",
						dbus["ssrconf_basic_rss_obfs_" + i ],
						dbus["ssrconf_basic_rss_obfs_para_" + i ] || "",
						" "
						]  
				if ( t2.length == 12 ) this.insertData( -1, t2, i );
			}
			this.showNewEditor();
			this.resetNewEditor();
			// hide edit td 1 12
			E('_ssr_node-grid_1').style.display = "none";
			E('_ssr_node-grid_12').style.display = "none";
			// add placeholder for input
			$("#ssr_node-grid #_ssr_node-grid_3").attr("placeholder", "?????????")
			$("#ssr_node-grid #_ssr_node-grid_4").attr("placeholder", "??????")
			$("#ssr_node-grid #_ssr_node-grid_5").attr("placeholder", "??????")
			$("#ssr_node-grid #_ssr_node-grid_6").attr("placeholder", "??????")
			$("#ssr_node-grid #_ssr_node-grid_9").attr("placeholder", "????????????")
			$("#ssr_node-grid #_ssr_node-grid_11").attr("placeholder", "????????????")
			// adjust width
			$("#ssr_node-grid > tbody > tr > td:nth-child(5)").css("width", "100px");
			// hide some info less column
			if(dbus["ssrconf_basic_node_max"]){
				$("#ssr_node-grid > tbody > tr > td:nth-child(6)").hide();
				$("#ssr_node-grid > tbody > tr > td:nth-child(9)").hide();
				$("#ssr_node-grid > tbody > tr > td:nth-child(11)").hide();
			}else{
				$("#ssr_node-grid > tbody > tr.odd > td:nth-child(1)").hide();
				$("#ssr_node-grid > tbody > tr.even > td:nth-child(1)").hide();
				$("#ssr_node-grid > tbody > tr.editor > td:nth-child(1)").hide();
				$("#ssr_node-grid > tbody > tr:nth-child(1) > td.header.co1").hide();
				$("#ssr_node-grid > tbody > tr > td:nth-child(6)").show();
				$("#ssr_node-grid > tbody > tr > td:nth-child(9)").show();
				$("#ssr_node-grid > tbody > tr > td:nth-child(11)").show();
				$("#ssr_node-grid > tbody > tr > td:nth-child(12)").hide();
			}
			// when adding node, make all usedfull colum visible
			$("#ssr_node-grid > tbody > tr.editor").click(
				function() {
				$("#ssr_node-grid > tbody > tr.odd > td:nth-child(1)").hide();
				$("#ssr_node-grid > tbody > tr.even > td:nth-child(1)").hide();
				$("#ssr_node-grid > tbody > tr.editor > td:nth-child(1)").hide();
				$("#ssr_node-grid > tbody > tr:nth-child(1) > td.header.co1").hide();
				$("#ssr_node-grid > tbody > tr > td:nth-child(6)").show();
				$("#ssr_node-grid > tbody > tr > td:nth-child(9)").show();
				$("#ssr_node-grid > tbody > tr > td:nth-child(11)").show();
				$("#ssr_node-grid > tbody > tr > td:nth-child(12)").hide();
			});
		}
		//============================================
		var lb = new TomatoGrid();

		lb.dataToView = function(data) {
			return [ data[0], data[1], data[2], data[3], data[4], data[5], data[6], option_lb_policy_name[data[7]] ];
		}
	
		lb.verifyFields = function( row, quiet ) {
			var f = fields.getAll( row );
			return v_iptaddr( f[2], quiet ) && v_port( f[3], quiet );
		}
		lb.resetNewEditor = function() {
			var f;
			f = fields.getAll( this.newEditor );
			ferror.clearAll( f );
			f[0].value   = '';
			f[1].value   = '';
			f[2].value   = '';
			f[3].value   = '';
			f[4].selectedIndex   = '';
			f[5].value   = '';
			f[6].value   = '';
		}
		lb.onAdd = function() {
			var data;
			this.moving = null;
			this.rpHide();
			if (!this.verifyFields(this.newEditor, false)) return;
			data = this.fieldValuesToData(this.newEditor);
			this.insertData(-1, data);
			this.disableNewEditor(false);
			this.resetNewEditor();
		}
		lb.rpDel = function(e) {
			if (this.tb.rows.length == 2){
				dbus["ss_lb_type"] = ""
			}
			//$("#_ss_lb_node").append("<option value='" + deleted_value + "'>" + deleted_name[1] + "</option>");
			e = PR(e);
			TGO(e).moving = null;
			e.parentNode.removeChild(e);
			this.recolor();
			this.rpHide();
		}
		lb.init = function(tb, options, maxAdd, editorFields) {
			if (tb) {
				this.tb = E(tb);
				this.tb.gridObj = this;
			} else {
				this.tb = null;
			}
			if (!options) options = '';
			this.header = null;
			this.footer = null;
			this.editor = null;
			this.canSort = options.indexOf('sort') != -1;
			this.canMove = options.indexOf('move') != -1;
			this.maxAdd = maxAdd || 500;
			this.canEdit = false; //modified by sadog
			this.canDelete = true; //modified by sadog
			this.editorFields = editorFields;
			this.sortColumn = -1;
			//this.sortAscending = true;
		}
		lb.setup = function(lb_node, lb_type) {
			//get_dbus_data();
			if ($("#lb-grid > tbody > tr > td.header.co1").length == 0){
				this.init( 'lb-grid' );
				this.headerSet( ['????????????', '????????????', '???????????????', '??????', '????????????', '???wan??????', '??????', '??????' ] );
			}
			//ss set up on click
			if (lb_type == 1){
				var html ='<select name="ssconf_basic_lb_dest_' + lb_node + '" onchange="verifyFields(this, 1)" id="_ssconf_basic_lb_dest_' + lb_node + '"></select>'
				var t = [
						"???SS???" + dbus["ssconf_basic_name_" + lb_node ], 
						lb_node, 
						dbus["ssconf_basic_server_" + lb_node ], 
						dbus["ssconf_basic_port_" + lb_node ], 
						dbus["ssconf_basic_method_" + lb_node ], 
						//dbus["ssconf_basic_lb_dest_" + lb_node ] || wans[0][0],
						html,
						dbus["ssconf_basic_lb_weight_" + lb_node ],
						dbus["ssconf_basic_lb_policy_" + lb_node ]
						]
				if ( t.length == 8 ) this.insertData( -1, t );
				for ( var j = 0; j < wans.length; ++j ) {
					$("#_ssconf_basic_lb_dest_" + lb_node).append("<option value='"  + wans[j][0] + "'>" + wans[j][1] + "</option>");
				}
				E("_ssconf_basic_lb_dest_" + lb_node).value = dbus["ssconf_basic_lb_dest_" + lb_node] || 0;
			//ssr set up on click
			}else if (lb_type == 2){
				var html ='<select name="ssrconf_basic_lb_dest_' + lb_node + '" onchange="verifyFields(this, 1)" id="_ssrconf_basic_lb_dest_' + lb_node + '"></select>'
				var t = [
						"???SSR???" + dbus["ssrconf_basic_name_" + lb_node ], 
						lb_node, 
						dbus["ssrconf_basic_server_" + lb_node ], 
						dbus["ssrconf_basic_port_" + lb_node ], 
						dbus["ssrconf_basic_method_" + lb_node ],
						//dbus["ssrconf_basic_lb_dest_" + lb_node ] || wans[0][0],
						html,
						dbus["ssrconf_basic_lb_weight_" + lb_node ],
						dbus["ssrconf_basic_lb_policy_" + lb_node ]
						]
				if ( t.length == 8 ) this.insertData( -1, t );
				for ( var j = 0; j < wans.length; ++j ) {
					$("#_ssrconf_basic_lb_dest_" + lb_node).append("<option value='"  + wans[j][0] + "'>" + wans[j][1] + "</option>");
				}
				E("_ssrconf_basic_lb_dest_" + lb_node).value = dbus["ssrconf_basic_lb_dest_" + lb_node] || 0;
			}else{
				//ss set up on pageload
				for ( var i = 1; i <= dbus["ssconf_basic_node_max"]; i++){
					var html ='<select name="ssconf_basic_lb_dest_' + i + '" onchange="verifyFields(this, 1)" id="_ssconf_basic_lb_dest_' + i + '"></select>'
					if (dbus["ssconf_basic_lb_enable_" + i ] == 1){
						var t = ["???SS???" + dbus["ssconf_basic_name_" + i ], 
								String(i),
								dbus["ssconf_basic_server_" + i ], 
								dbus["ssconf_basic_port_" + i ], 
								dbus["ssconf_basic_method_" + i ],
								//dbus["ssconf_basic_lb_dest_" + i ] || wans[0][0],
								html,
								dbus["ssconf_basic_lb_weight_" + i ] || "50",
								dbus["ssconf_basic_lb_policy_" + i ] || "1"
								]
						if ( t.length == 8 ) this.insertData( -1, t );
						ss_lb_nodes.push(i);
						dbus["ss_lb_type"] = 1;
					}
				}
				//ssr set up on pageload
				for ( var i = 1; i <= dbus["ssrconf_basic_node_max"]; i++){
					if (dbus["ssrconf_basic_lb_enable_" + i ] == 1){
						var html ='<select name="ssrconf_basic_lb_dest_' + i + '" onchange="verifyFields(this, 1)" id="_ssrconf_basic_lb_dest_' + i + '">'
						for ( var j = 0; j < wans.length; ++j ) {
							html +='<option value=' + wans[j][0] + '>' + wans[j][1] + '</option>'
						}
						html +='</select>'
						var t = ["???SSR???" + dbus["ssrconf_basic_name_" + i ], 
								String(i),
								dbus["ssrconf_basic_server_" + i ], 
								dbus["ssrconf_basic_port_" + i ], 
								dbus["ssrconf_basic_method_" + i ],
								html,
								dbus["ssrconf_basic_lb_weight_" + i ] || "50", 
								dbus["ssrconf_basic_lb_policy_" + i ] || "1"
								]
						if ( t.length == 8 ) this.insertData( -1, t );
						ssr_lb_nodes.push(i);
						dbus["ss_lb_type"] = 2;
					}
				}
			}
		}
		
		function add_lb_node(){
			lb_node_sel = E('_ss_lb_node').value || 1;
			if (dbus["ssrconf_basic_rss_protocal_" + (lb_node_sel - node_ss)]){ // using ssr
				if (!dbus["ss_lb_type"] || dbus["ss_lb_type"] == 2){
					dbus["ssrconf_basic_lb_enable_" + (lb_node_sel - node_ss) ] = "1";
					dbus["ssrconf_basic_lb_weight_" + (lb_node_sel - node_ss) ] = E("_ss_lb_weight").value;
					dbus["ssrconf_basic_lb_policy_" + (lb_node_sel - node_ss) ] = E("_ss_lb_policy").value;
					dbus["ssrconf_basic_lb_dest_" + (lb_node_sel - node_ss) ] = E("_ss_lb_dest").value;
					dbus["ss_lb_type"] = 2;
					lb_type=2;
					lb_node = String(lb_node_sel - node_ss);
				}else{
					alert("SS?????????SSR?????????????????????????????????")
					return false;
				}
			}else{ //ss
				if (!dbus["ss_lb_type"] || dbus["ss_lb_type"] == 1){
					dbus["ssconf_basic_lb_enable_" + lb_node_sel ] = "1";
					dbus["ssconf_basic_lb_weight_" + lb_node_sel ] = E("_ss_lb_weight").value;
					dbus["ssconf_basic_lb_policy_" + lb_node_sel ] = E("_ss_lb_policy").value;
					dbus["ssconf_basic_lb_dest_" + lb_node_sel ] = E("_ss_lb_dest").value;
					dbus["ss_lb_type"] = 1;
					lb_type=1;
					lb_node=lb_node_sel;
				}else{
					alert("SS?????????SSR?????????????????????????????????")
					return false;
				}
			}
			lb.setup(lb_node, lb_type);
			//$("#_ss_lb_node option[value='" + lb_node_sel +"']").remove();
			$("#_ss_lb_node").val(parseInt(lb_node_sel) + 1);
		}

		//============================================
		var ss_acl = new TomatoGrid();
			ss_acl.dataToView = function( data ) {
			var option_acl_port = [['80,443', '80,443'], ['22,80,443', '22,80,443'], ['all', 'all'], ['0', '?????????']];
			var option_acl_port_value = ['80,443', '22,80,443', 'all', '0'];
			var option_acl_port_name = ['80,443', '22,80,443', '????????????', '?????????'];
			var a = option_acl_port_value.indexOf(data[4]);
			var b = option_acl_port_name[a]
			if (data[4] == 0){
				b = data[5]
			}
		
			if (data[0]){
				return [ "???" + data[0] + "???", data[1], data[2], option_acl_mode_name[data[3]], b, data[5] ];
			}else{
				if (data[1]){
					return [ "???" + data[1] + "???", data[1], data[2], option_acl_mode_name[data[3]], b, data[5] ];
				}else{
					if (data[2]){
						return [ "???" + data[2] + "???", data[1], data[2], option_acl_mode_name[data[3]], b, data[5] ];
					}
				}
			}
		}
		ss_acl.fieldValuesToData = function( row ) {
			var f = fields.getAll( row );
			if (f[0].value){
				return [ f[0].value, f[1].value, f[2].value, f[3].value, f[4].value, f[5].value ];
			}else{
				if (f[1].value){
					return [ f[1].value, f[1].value, f[2].value, f[3].value, f[4].value, f[5].value ];
				}else{
					if (f[2].value){
						return [ f[2].value, f[1].value, f[2].value, f[3].value, f[4].value, f[5].value ];
					}
				}
			}
		}
		ss_acl.dataToFieldValues = function (data) {
			return [data[0], data[1], data[2], data[3], data[4], data[5]];
		}
    	ss_acl.onChange = function(which, cell) {
    	    return this.verifyFields((which == 'new') ? this.newEditor: this.editor, true, cell);
    	}
		ss_acl.alter_txt = function() {
			if (this.tb.rows.length == "3"){
				$('#ss_acl_default_pannel > fieldset:nth-child(3) > div > span').html('????????????????????????????????????????????????????????????????????????????????????????????????');
				$("#ss_acl_default_pannel > fieldset:nth-child(1) > label").html('???????????? (????????????)');
				$("#ss_acl_default_pannel > fieldset:nth-child(2) > label").html('???????????? (????????????)');
			}else{
				$('#ss_acl_default_pannel > fieldset:nth-child(3) > div > span').html('?????????????????????????????????????????????????????????????????????????????????????????????????????????');
				$("#ss_acl_default_pannel > fieldset:nth-child(1) > label").html('???????????? (????????????)');
				$("#ss_acl_default_pannel > fieldset:nth-child(2) > label").html('???????????? (????????????)');
			}
		}
		ss_acl.onAdd = function() {
			var data;
			this.moving = null;
			this.rpHide();
			if (!this.verifyFields(this.newEditor, false)) return;
			data = this.fieldValuesToData(this.newEditor);
			this.insertData(1, data);
			this.disableNewEditor(false);
			this.resetNewEditor();
			this.alter_txt(); // added by sadog
		}
		ss_acl.rpDel = function(b) {
			b = PR(b);
			TGO(b).moving = null;
			b.parentNode.removeChild(b);
			this.recolor();
			this.rpHide()
			this.alter_txt(); // added by sadog
		}
		ss_acl.resetNewEditor = function() {
			var f;
			f = fields.getAll( this.newEditor );
			ferror.clearAll( f );
			f[ 0 ].value = '';
			f[ 1 ].value   = '';
			f[ 2 ].value   = '';
			f[ 3 ].value   = '1';
			f[ 4 ].value   = '80,443';
			f[ 5 ].value   = '';
		}

		ss_acl.createEditor = function(which, rowIndex, source) {
			var values;
			if (which == 'edit') values = this.dataToFieldValues(source.getRowData());
			var row = this.tb.insertRow(rowIndex);
			row.className = 'editor';
			var common = ' onkeypress="return TGO(this).onKey(\'' + which + '\', event)" onchange="TGO(this).onChange(\'' + which + '\', this)"';
			var common_b = ' onclick="return TGO(this).onKey(\'' + which + '\', event)" onchange="TGO(this).onChange(\'' + which + '\', this)"';
			var vi = 0;
			for (var i = 0; i < this.editorFields.length; ++i) {
				var s = '';
				var ef = this.editorFields[i].multi;
				if (!ef) ef = [this.editorFields[i]];
				for (var j = 0; j < ef.length; ++j) {
					var f = ef[j];
					if (f.prefix) s += f.prefix;
					var attrib = ' class="fi' + (vi + 1) + ' ' + (f['class'] ? f['class'] : '') + '" ' + (f.attrib || '');
					var id = (this.tb ? ('_' + this.tb.id + '_' + (vi + 1)) : null);
					if (id) attrib += ' id="' + id + '"';
					switch (f.type) {
						case 'password':
							if (f.peekaboo) {
								switch (get_config('web_pb', '1')) {
									case '0':
										f.type = 'text';
									case '2':
										f.peekaboo = 0;
										break;
								}
							}
							attrib += ' autocomplete="off"';
							if (f.peekaboo && id) attrib += ' onfocus=\'peekaboo("' + id + '",1)\'';
							// drop
						case 'text':
							s += '<input type="' + f.type + '" maxlength=' + f.maxlen + common + attrib;
							if (which == 'edit') s += ' value="' + escapeHTML('' + values[vi]) + '">';
							else s += '>';
							break;
						case 'select':
							s += '<select' + common + attrib + '>';
							for (var k = 0; k < f.options.length; ++k) {
								a = f.options[k];
								if (which == 'edit') {
									s += '<option value="' + a[0] + '"' + ((a[0] == values[vi]) ? ' selected>' : '>') + a[1] + '</option>';
								} else {
									s += '<option value="' + a[0] + '">' + a[1] + '</option>';
								}
							}
							s += '</select>';
							break;
						case 'checkbox':
							s += '<div class="checkbox c-checkbox"><label><input type="checkbox"' + common + attrib;
							if ((which == 'edit') && (values[vi])) s += ' checked';
							s += '><span></span> </label></div>';
							break;
						case 'textarea':
							if (which == 'edit') {
								document.getElementById(f.proxy).value = values[vi];
							}
							break;
						default:
							s += f.custom.replace(/\$which\$/g, which);
					}
					if (f.suffix) s += f.suffix;
					++vi;
				}
				var c = row.insertCell(i);
				c.innerHTML = s;
				// Added verticalAlignment, this fixes the incorrect vertical positioning of inputs in the editorRow
				if (this.editorFields[i].vtop) {
					c.vAlign = 'top';
					c.style.verticalAlign = "top";
				}
			}
			return row;
		}
		ss_acl.verifyFields = function( row, quiet,cell ) {
			var f = fields.getAll( row );
			// fill the ip and mac when chose the name
			if ( $(cell).attr("id") == "_ss_acl_pannel_1" ) {
				if (f[0].value){
					f[1].value = option_arp_list[f[0].selectedIndex][2];
					f[2].value = option_arp_list[f[0].selectedIndex][3];
				}
			}
			// fill the port when chose the mode
			if ( $(cell).attr("id") == "_ss_acl_pannel_4" ) {
				if (f[3].selectedIndex == 0){
					f[4].selectedIndex = 2;
				}else if(f[3].selectedIndex == 1){
					f[4].selectedIndex = 0;
				}else if(f[3].selectedIndex == 2){
					f[4].selectedIndex = 1;
				}else if(f[3].selectedIndex == 3){
					f[4].selectedIndex = 2;
				}else if(f[3].selectedIndex == 4){
					f[4].selectedIndex = 0;
				}
			}
			// user port
			if (f[4].selectedIndex == 3){
				$("#ss_acl_pannel > tbody > tr > td:nth-child(6)").show();
				$("#_ss_acl_pannel_6").show();
			}else{
				$("#ss_acl_pannel > tbody > tr > td:nth-child(6)").hide();
				$("#_ss_acl_pannel_6").hide();
			}
			// ??????????????????????????????????????????????????????????????????????????????????????????kcp????????????
			var s1 = E('_ss_lb_enable').checked;
			var s2 = E('_ss_basic_node').value == "0";
			if(s1 && s2){
				$("#_ss_acl_pannel_4 option[value=3]").hide();
			}else{
				$("#_ss_acl_pannel_4 option[value=3]").show();
			}
			//check if ip and mac column correct
			if (f[1].value && !f[2].value){
				return v_ip( f[1], quiet );
			}
			if (!f[1].value && f[2].value){
				return v_mac( f[2], quiet );
			}
			if (f[1].value && f[2].value){
				return v_ip( f[1], quiet ) || v_mac( f[2], quiet );
			}
		}

		ss_acl.setup = function() {
			this.init( 'ss_acl_pannel', '', 254, [
			{ type: 'select',maxlen:20,options:option_arp_list},
			{ type: 'text',maxlen:20},
			{ type: 'text',maxlen:20},
			{ type: 'select',maxlen:20,options:option_acl_mode},
			{ type: 'select',maxlen:20,options:option_acl_port},
			{ type: 'text',maxlen:20}
			] );
			this.headerSet( [ '????????????', '??????IP??????', 'MAC??????', '????????????' , '????????????', '???????????????' ] );
			if(dbus["ss_acl_node_max"]){
				for ( var i = 1; i <= dbus["ss_acl_node_max"]; i++){
					var t = [dbus["ss_acl_name_" + i ], 
							dbus["ss_acl_ip_" + i ]  || "",
							dbus["ss_acl_mac_" + i ]  || "",
							dbus["ss_acl_mode_" + i ],
							dbus["ss_acl_port_" + i ],
							dbus["ss_acl_port_user_" + i ]||""
							]
					if ( t.length == 6 ) this.insertData( -1, t );
				}
				$('#ss_acl_default_pannel > fieldset:nth-child(3) > div > span').html('????????????????????????????????????????????????????????????????????????????????????????????????');
				$("#ss_acl_default_pannel > fieldset:nth-child(1) > label").html('???????????? (????????????)');
				$("#ss_acl_default_pannel > fieldset:nth-child(2) > label").html('???????????? (????????????)');
			}else{
				$('#ss_acl_default_pannel > fieldset:nth-child(3) > div > span').html('?????????????????????????????????????????????????????????????????????????????????????????????????????????');
				$("#ss_acl_default_pannel > fieldset:nth-child(1) > label").html('???????????? (????????????)');
				$("#ss_acl_default_pannel > fieldset:nth-child(2) > label").html('???????????? (????????????)');
			}
			
			this.recolor();
			this.showNewEditor();
			this.resetNewEditor();
			$("#_ss_acl_pannel_6").hide();
			$("#ss_acl_pannel > tbody > tr > td:nth-child(6)").hide();
			// ??????????????????????????????????????????????????????????????????????????????????????????kcp????????????
			var s1 = E('_ss_lb_enable').checked;
			var s2 = E('_ss_basic_node').value == "0";
			if(s1 && s2){
				$("#_ss_acl_pannel_4 option[value=3]").hide();
			}else{
				$("#_ss_acl_pannel_4 option[value=3]").show();
			}
		}
		ss_acl.disableNewEditor = function(disable) {
			if (this.getDataCount() >= this.maxAdd) disable = true;
			if (this.newEditor) fields.disableAll(this.newEditor, disable);
			if (this.newControls) fields.disableAll(this.newControls, disable);
			$("#ss_acl_pannel > tbody > tr > td:nth-child(6)").hide();
		}
		ss_acl.onClick = function(cell) {
			if (this.canEdit) {
				this.edit(cell);
			}
		}
		ss_acl.edit = function(cell) {
			var sr, er, e, c;
			if (this.isEditing()) return;
			sr = PR(cell);
			sr.style.display = 'none';
			elem.removeClass(sr, 'hover');
			this.source = sr;
			er = this.createEditor('edit', sr.rowIndex, sr);
			er.className = 'editor';
			this.editor = er;
			c = er.cells[cell.cellIndex || 0];
			e = c.getElementsByTagName('input');
			if ((e) && (e.length > 0)) {
				try { // IE quirk
					e[0].focus();
				} catch (ex) {}
			}
			this.controls = this.createControls('edit', sr.rowIndex);
			this.disableNewEditor(true);
			this.rpHide();
			this.verifyFields(this.editor, true);
		}
		// ===========================================
		var online_link = new TomatoGrid();
		online_link.dataToView = function(data) {
			return [ data[0]];
		}
		online_link.createEditor = function(which, rowIndex, source) {
			var values;
			if (which == 'edit') values = this.dataToFieldValues(source.getRowData());
			var row = this.tb.insertRow(rowIndex);
			row.className = 'editor';
			var common = ' onkeypress="return TGO(this).onKey(\'' + which + '\', event)" onchange="TGO(this).onChange(\'' + which + '\', this)"';
			var vi = 0;
			for (var i = 0; i < this.editorFields.length; ++i) {
				var s = '';
				var ef = this.editorFields[i].multi;
				if (!ef) ef = [this.editorFields[i]];
				for (var j = 0; j < ef.length; ++j) {
					var f = ef[j];
					if (f.prefix) s += f.prefix;
					var attrib = ' class="fi' + (vi + 1) + ' ' + (f['class'] ? f['class'] : '') + '" ' + (f.attrib || '');
					var id = (this.tb ? ('_' + this.tb.id + '_' + (vi + 1)) : null);
					if (id) attrib += ' id="' + id + '"';
					switch (f.type) {
						case 'password':
							if (f.peekaboo) {
								switch (get_config('web_pb', '1')) {
									case '0':
										f.type = 'text';
									case '2':
										f.peekaboo = 0;
										break;
								}
							}
							attrib += ' autocomplete="off"';
							if (f.peekaboo && id) attrib += ' onfocus=\'peekaboo("' + id + '",1)\'';
							// drop
						case 'text':
							s += '<input style="max-width:89%" type="' + f.type + '" maxlength=' + f.maxlen + common + attrib;
							if (which == 'edit') s += ' value="' + escapeHTML('' + values[vi]) + '">';
							else s += '>';
							break;
						case 'select':
							s += '<select' + common + attrib + '>';
							for (var k = 0; k < f.options.length; ++k) {
								a = f.options[k];
								if (which == 'edit') {
									s += '<option value="' + a[0] + '"' + ((a[0] == values[vi]) ? ' selected>' : '>') + a[1] + '</option>';
								} else {
									s += '<option value="' + a[0] + '">' + a[1] + '</option>';
								}
							}
							s += '</select>';
							break;
						case 'checkbox':
							s += '<div class="checkbox c-checkbox"><label><input type="checkbox"' + common + attrib;
							if ((which == 'edit') && (values[vi])) s += ' checked';
							s += '><span></span> </label></div>';
							break;
						case 'textarea':
							if (which == 'edit') {
								document.getElementById(f.proxy).value = values[vi];
							}
							break;
						default:
							s += f.custom.replace(/\$which\$/g, which);
					}
					if (f.suffix) s += f.suffix;
					++vi;
				}
				var c = row.insertCell(i);
				c.innerHTML = s;
				// Added verticalAlignment, this fixes the incorrect vertical positioning of inputs in the editorRow
				if (this.editorFields[i].vtop) {
					c.vAlign = 'top';
					c.style.verticalAlign = "top";
				}
			}
			return row;
		}
		online_link.verifyFields = function( row, quiet ) {
			var f = fields.getAll( row );
			var f = fields.getAll( row );
			if(!f[0].value){
				alert("???????????????");
				return false;
			}else{
				if(f[0].value.indexOf("http://") != -1 || f[0].value.indexOf("https://") != -1){
					return true;
				}else{
					alert("???????????????????????? http:// ?????? https:// ????????????????????????");
					return false;
				}
			}
		}
		online_link.resetNewEditor = function() {
			var f;
			f = fields.getAll( this.newEditor );
			ferror.clearAll( f );
			f[ 0 ].value   = '';
		}
		online_link.createControls = function(which, rowIndex) {
			var r, c;
			r = this.tb.insertRow(rowIndex);
			r.className = 'controls';
			c = r.insertCell(0);
			c.colSpan = this.header.cells.length;
			if (which == 'edit') {
				c.innerHTML = '<button type="button" class="btn btn-danger" value="Delete" onclick="TGO(this).onDelete()">?????? <i class="icon-cancel"></i></button> ' + '<button type="button" class="btn" value="Cancel" onclick="TGO(this).onCancel()">?????? <i class="icon-disable"></i></button> ' + '<button type="button" class="btn btn-primary" value="OK" onclick="TGO(this).onOK()">?????? <i class="icon-check"></i></button>';
			} else {
				c.innerHTML = '<button type="button" class="btn btn-danger" value="Add" onclick="TGO(this).onAdd()">?????? <i class="icon-plus"></i></button>';
			}
			return r;
		}
		online_link.setup = function() {
			this.init( 'online_link-grid', '', 10, [
				{ type: 'text', maxlen: 1024 }
			] );
			this.headerSet( [ '????????????'] );
			for ( var i = 1; i <= 10; i++){
					var t1 = [dbus["ss_online_link_" + i ]];
					if ( t1[0] && t1.length == 1 ) this.insertData( -1, t1 );
			}
			this.showNewEditor();
			this.resetNewEditor();
			$("#online_link-grid > tbody > tr:nth-child(1)").hide();
			$("#online_link-grid > tbody > tr.controls").hide();
			$("#_online_link-grid_1").after('&nbsp;&nbsp;<button type="button" class="btn btn-danger" style="margin-top:-5px" value="Add" onclick="TGO(this).onAdd()">?????? <i class="icon-plus"></i></button>')
		}
		// ===========================================
		var ss_link = new TomatoGrid();
		ss_link.dataToView = function(data) {
			return [ data[0]];
		}
		ss_link.createEditor = function(which, rowIndex, source) {
			var values;
			if (which == 'edit') values = this.dataToFieldValues(source.getRowData());
			var row = this.tb.insertRow(rowIndex);
			row.className = 'editor';
			var common = ' onkeypress="return TGO(this).onKey(\'' + which + '\', event)" onchange="TGO(this).onChange(\'' + which + '\', this)"';
			var vi = 0;
			for (var i = 0; i < this.editorFields.length; ++i) {
				var s = '';
				var ef = this.editorFields[i].multi;
				if (!ef) ef = [this.editorFields[i]];
				for (var j = 0; j < ef.length; ++j) {
					var f = ef[j];
					if (f.prefix) s += f.prefix;
					var attrib = ' class="fi' + (vi + 1) + ' ' + (f['class'] ? f['class'] : '') + '" ' + (f.attrib || '');
					var id = (this.tb ? ('_' + this.tb.id + '_' + (vi + 1)) : null);
					if (id) attrib += ' id="' + id + '"';
					switch (f.type) {
						case 'password':
							if (f.peekaboo) {
								switch (get_config('web_pb', '1')) {
									case '0':
										f.type = 'text';
									case '2':
										f.peekaboo = 0;
										break;
								}
							}
							attrib += ' autocomplete="off"';
							if (f.peekaboo && id) attrib += ' onfocus=\'peekaboo("' + id + '",1)\'';
							// drop
						case 'text':
							s += '<input style="max-width:89%" type="' + f.type + '" maxlength=' + f.maxlen + common + attrib;
							if (which == 'edit') s += ' value="' + escapeHTML('' + values[vi]) + '">';
							else s += '>';
							break;
						case 'select':
							s += '<select' + common + attrib + '>';
							for (var k = 0; k < f.options.length; ++k) {
								a = f.options[k];
								if (which == 'edit') {
									s += '<option value="' + a[0] + '"' + ((a[0] == values[vi]) ? ' selected>' : '>') + a[1] + '</option>';
								} else {
									s += '<option value="' + a[0] + '">' + a[1] + '</option>';
								}
							}
							s += '</select>';
							break;
						case 'checkbox':
							s += '<div class="checkbox c-checkbox"><label><input type="checkbox"' + common + attrib;
							if ((which == 'edit') && (values[vi])) s += ' checked';
							s += '><span></span> </label></div>';
							break;
						case 'textarea':
							if (which == 'edit') {
								document.getElementById(f.proxy).value = values[vi];
							}
							break;
						default:
							s += f.custom.replace(/\$which\$/g, which);
					}
					if (f.suffix) s += f.suffix;
					++vi;
				}
				var c = row.insertCell(i);
				c.innerHTML = s;
				// Added verticalAlignment, this fixes the incorrect vertical positioning of inputs in the editorRow
				if (this.editorFields[i].vtop) {
					c.vAlign = 'top';
					c.style.verticalAlign = "top";
				}
			}
			return row;
		}
		ss_link.verifyFields = function( row, quiet ) {
			var f = fields.getAll( row );
			if(!f[0].value){
				alert("???????????????");
				return false;
			}else{
				if(f[0].value.indexOf("ssr://") != -1 || f[0].value.indexOf("ss://") != -1){
					return true;
				}else{
					alert("????????????????????????ssr:// ?????? ss:// ??????????????????");
					return false;
				}
			}
		}
		ss_link.onAdd = function() {
			var data;
			this.moving = null;
			this.rpHide();
			if (!this.verifyFields(this.newEditor, false)) return;
			data = this.fieldValuesToData(this.newEditor);
			this.insertData(-1, data);
			this.disableNewEditor(false);
			this.resetNewEditor();
			E("save-add-link").disabled=false;
		}
		ss_link.resetNewEditor = function() {
			var f;
			f = fields.getAll( this.newEditor );
			ferror.clearAll( f );
			f[ 0 ].value   = '';
		}
		ss_link.createControls = function(which, rowIndex) {
			var r, c;
			r = this.tb.insertRow(rowIndex);
			r.className = 'controls';
			c = r.insertCell(0);
			c.colSpan = this.header.cells.length;
			if (which == 'edit') {
				c.innerHTML = '<button type="button" class="btn btn-danger" value="Delete" onclick="TGO(this).onDelete()">?????? <i class="icon-cancel"></i></button> ' + '<button type="button" class="btn" value="Cancel" onclick="TGO(this).onCancel()">?????? <i class="icon-disable"></i></button> ' + '<button type="button" class="btn btn-primary" value="OK" onclick="TGO(this).onOK()">?????? <i class="icon-check"></i></button>';
			} else {
				c.innerHTML = '<button type="button" class="btn btn-danger" value="Add" onclick="TGO(this).onAdd()">?????? <i class="icon-plus"></i></button>';
			}
			return r;
		}
		ss_link.setup = function() {
			this.init( 'ss_link-grid', '', 20, [
				{ type: 'text' }
			] );
			this.headerSet( [ '????????????'] );
			for ( var i = 1; i <= 20; i++){
				var t1 = [dbus["ss_base64_link_" + i ]];
				if ( t1[0] && t1.length == 1 ) this.insertData( -1, t1 );
			}
			this.showNewEditor();
			this.resetNewEditor();
			E("save-add-link").disabled=true;
			$("#ss_link-grid > tbody > tr:nth-child(1)").hide();
			$("#ss_link-grid > tbody > tr.controls").hide();
			$("#_ss_link-grid_1").after('&nbsp;&nbsp;<button type="button" class="btn btn-danger" style="margin-top:-5px" value="Add" onclick="TGO(this).onAdd()">?????? <i class="icon-plus"></i></button>')
		}
		//============================================
		function init_ss(){
			tabSelect('app1');
			ss_node.setup();
			ssr_node.setup();
			online_link.setup();
			ss_link.setup();
			get_wans_list();
			//get_wans_list2();
			auto_node_sel();
			verifyFields();
			hook_event();
			ping_node();
			setTimeout("get_run_status();", 1000);
		}
   		function ping_node(){
	   		$(window).scrollTop(25);
	   		E("ping_botton").disabled=true;
			if(softcenter == 1){
				return false;
			}
			if (!dbus["ssconf_basic_node_max"] && !dbus["ssrconf_basic_node_max"]){
				return false;
			}
			// refill
			var pings = document.getElementsByClassName('co4');
			for(var i = 0; i<pings.length; i++)	{
				if (pings[i].innerHTML.indexOf("\.") != -1){
					if (pings[i].parentNode.getElementsByClassName('co12').length == 1){ //ssr
						pings[i].parentNode.getElementsByClassName('co12')[0].innerHTML = "?????????..."
					}else{ //ss
						pings[i].parentNode.getElementsByClassName('co10')[0].innerHTML = "?????????..."
					}
				}
			}
			
			var dbus4 = {};
			dbus4["ss_basic_ping_method"] = E("_ss_basic_ping_method").value;
			var id = parseInt(Math.random() * 100000000);
			var postData = {"id": id, "method": "ss_ping.sh", "params":[], "fields": dbus4};
			$.ajax({
				type: "POST",
				url: "/_api/",
				async:true,
				cache:false,
				data: JSON.stringify(postData),
				dataType: "json",
				success: function(response){
					var ps=eval(Base64.decode(response.result));
					for(var i = 0; i<ps.length; i++){
						var nu = parseInt(ps[i][0]) + 1;
						var type = ps[i][1];
						var ping = parseInt(ps[i][2]);
						var loss = ps[i][3];
						if (!ping){
							if(E("_ss_basic_ping_method").value == 1){
								test_result = '<font color="#990000">failed</font>';
							}else{
								test_result = '<font color="#990000">failed / ' + loss + '</font>';
							}
						}else{
							if(E("_ss_basic_ping_method").value == 1){
								$('#ss_node-grid > tbody > tr:nth-child(1) > td.header.co10').html("ping");
								$('#ssr_node-grid > tbody > tr:nth-child(1) > td.header.co12').html("ping");
								if (ping <= 50){
									test_result = '<font color="#1bbf35">' + parseFloat(ping).toPrecision(3) +'  ms</font>';
								}else if (ping > 50 && ping <= 100) {
									test_result = '<font color="#3399FF">' + parseFloat(ping).toPrecision(3) +'  ms</font>';
								}else{
									test_result = '<font color="#f36c21">' + parseFloat(ping).toPrecision(3) +'  ms</font>';
								}
							}else{
								$('#ss_node-grid > tbody > tr:nth-child(1) > td.header.co10').html("ping / ??????");
								$('#ssr_node-grid > tbody > tr:nth-child(1) > td.header.co12').html("ping / ??????");
								if (ping <= 50){
									test_result = '<font color="#1bbf35">' + parseFloat(ping).toPrecision(3) +'  ms / ' + loss + '</font>';
								}else if (ping > 50 && ping <= 100) {
									test_result = '<font color="#3399FF">' + parseFloat(ping).toPrecision(3) +'  ms / ' + loss + '</font>';
								}else{
									test_result = '<font color="#f36c21">' + parseFloat(ping).toPrecision(3) +'  ms / ' + loss + '</font>';
								}
							}
						}
						if (type == "ssr"){
							$('#ssr_node-grid > tbody > tr:nth-child(' + nu + ') > td.co12').html(test_result);
						}else if (type == "ss"){
							$('#ss_node-grid > tbody > tr:nth-child(' + nu + ') > td.co10').html(test_result);
						}
					}
	   				E("ping_botton").disabled=false;
				},
				error:function(){
				}
			});
		}

		function hook_event(){
			// when click log content, stop scrolling
			$("#_ss_basic_log").click(
				function() {
				x = 10000000;
				});
			$('#ss_status_pannel').on('click', function() {
				open111();
			});
		}

		function open111(){
			layer.open({
				type: 2,
				shade: .7,
				scrollbar: 0,
				title: '?????????????????????:ip111.cn',
				area: ['750px', '490px'],
				fixed: false, //?????????
				maxmin: true,
				shadeClose: 1,
				id: 'LAY_layuipro',
				btnAlign: 'c',
				content: ['http://ip111.cn/', 'no'],
			});
		}

		function join_node(){
			if (typeof(dbus["ssconf_basic_node_max"]) == "undefined" && typeof(dbus["ssrconf_basic_node_max"]) == "undefined"){
				node_ss = 1;
			}else if (typeof(dbus["ssconf_basic_node_max"]) == "undefined"){
				node_ss = 0;
			}else{
				node_ss = parseInt(dbus["ssconf_basic_node_max"]);
			}
			node_ssr = parseInt(dbus["ssrconf_basic_node_max"]) || 0;
			
			if (dbus["ss_lb_enable"] == 1){
				if (dbus["ss_lb_type"] == 1 && dbus["ss_lb_node_max"]){
					option_node_name[0] = ["0", "???SS???????????????"];
					option_node_addr[0] = ["0", "0"];
				}else if (dbus["ss_lb_type"] == 2 && dbus["ss_lb_node_max"]){
					option_node_name[0] = ["0", "???SSR???????????????"];
					option_node_addr[0] = ["0", "0"];
				}else{
					option_node_name[0] = ["0", "????????????(??????????????????)"];
					option_node_addr[0] = ["0", "0"];
				}
				
				for ( var i = 1; i <= node_ss; i++){
					option_node_name[i] = [ i, "???SS???" + dbus["ssconf_basic_name_" + i]];
					option_node_addr[i] = [ dbus["ssconf_basic_server_" + i], "???SS???" + dbus["ssconf_basic_name_" + i]];
				}
				for ( var i = node_ss + 1; i <= (node_ss + node_ssr); i++){
					option_node_name[i] = [ i, "???SSR???" + dbus["ssrconf_basic_name_" + ( i - node_ss)]];
					option_node_addr[i] = [ dbus["ssrconf_basic_server_" + ( i - node_ss)], "???SSR???" + dbus["ssrconf_basic_name_" + ( i - node_ss)]];
				}
				
			}else{
				for ( var i = 0; i < node_ss; i++){
					option_node_name[i] = [ ( i + 1), "???SS???" + dbus["ssconf_basic_name_" + ( i + 1)]];
					option_node_addr[i] = [ dbus["ssconf_basic_server_" + ( i + 1)], "???SS???" + dbus["ssconf_basic_name_" + ( i + 1)]];
				}
				for ( var i = node_ss; i < (node_ss + node_ssr); i++){
					option_node_name[i] = [ ( i + 1), "???SSR???" + dbus["ssrconf_basic_name_" + ( i + 1 - node_ss)]];
					option_node_addr[i] = [ dbus["ssrconf_basic_server_" + (i + 1 - node_ss)], "???SSR???" + dbus["ssrconf_basic_name_" + ( i + 1 - node_ss)]];
				}
			}
		}
		function get_dbus_data(){
			$.ajax({
			  	type: "GET",
			 	url: "/_api/ss",
			  	dataType: "json",
			  	async:false,
			 	success: function(data){
			 	 	dbus = data.result[0];
					$('#_ss_version').html( '<a style="margin-left:-4px" href="https://github.com/koolshare/ledesoft/blob/master/koolss/Changelog.txt" target="_blank"><font color="#0099FF">koolss for LEDE  ' + (dbus["ss_version"]  || "") + '</font></a>' );
			  	}
			});
		}
		
		function get_run_status(){
			if (status_time > 999999){
				return false;
			}
			var id1 = parseInt(Math.random() * 100000000);
			var postData1 = {"id": id1, "method": "ss_status.sh", "params":[2], "fields": ""};
			$.ajax({
				type: "POST",
				url: "/_api/",
				async: true,
				data: JSON.stringify(postData1),
				dataType: "json",
				success: function(response){
					var ss_status = response.result.split("@@");
					if(softcenter == 1){
						return false;
					}
					++status_time;
					if (response.result == '-2'){
						E("_ss_basic_status_foreign").innerHTML = "???????????????????????????";
						E("_ss_basic_status_china").innerHTML = "???????????????????????????";
						setTimeout("get_run_status();", (status_refresh_rate * 1000));
					}else{
						if(dbus["ss_basic_enable"] == "0"){
							E("_ss_basic_status_foreign").innerHTML = "???????????? - ????????????????????????????????????";
							E("_ss_basic_status_china").innerHTML = "???????????? - ????????????????????????????????????";
						}else{
							E("_ss_basic_status_foreign").innerHTML = ss_status[0];
							E("_ss_basic_status_china").innerHTML = ss_status[1];
							if (ss_status[2]){
								$("#_ss_basic_kcp_status").parent().show();
								$("#_ss_basic_kcp_status").html(ss_status[2])
								$("#ss_status_title").css("padding", "25.5px 10px");
							}else{
								$("#_ss_basic_kcp_status").parent().hide();
							}
							if (ss_status[3]){
								$("#_ss_basic_lb_status").parent().show();
								$("#_ss_basic_lb_status").html(ss_status[3])
								$("#ss_status_title").css("padding", "25.5px 10px");
							}else{
								$("#_ss_basic_lb_status").parent().hide();
							}
						}
						setTimeout("get_run_status();", (status_refresh_rate * 1000));
					}
				},
				error: function(){
					if(softcenter == 1){
						return false;
					}
					E("_ss_basic_status_foreign").innerHTML = "???????????????????????????";
					E("_ss_basic_status_china").innerHTML = "???????????????????????????";
					setTimeout("get_run_status();", (status_refresh_rate * 1000));
				}
			});
		}

		function mwan_set(){
			lb.setup();
			for ( var i = 0; i < wans.length; ++i ) {
				$("#_ss_mwan_ping_dst").append("<option value='"  + wans[i][0] + "'>" + wans[i][1] + "</option>");
				$("#_ss_mwan_china_dns_dst").append("<option value='"  + wans[i][0] + "'>" + wans[i][1] + "</option>");
				$("#_ss_mwan_vps_ip_dst").append("<option value='"  + wans[i][0] + "'>" + wans[i][1] + "</option>");
				$("#_ss_lb_dest").append("<option value='"  + wans[i][0] + "'>" + wans[i][1] + "</option>");
			}
			// fill the 3 input
			if(wans.length > 1){
				E("_ss_mwan_ping_dst").value = dbus["ss_mwan_ping_dst"] || "0";
				E("_ss_mwan_china_dns_dst").value = dbus["ss_mwan_china_dns_dst"] || "0";
				E("_ss_mwan_vps_ip_dst").value = dbus["ss_mwan_vps_ip_dst"] || "0";
				E("_ss_lb_dest").value = dbus["ss_lb_dst"] || "0";
			}else if (wans.length == 0){
				E("_ss_mwan_ping_dst").value = "0";
				E("_ss_mwan_china_dns_dst").value = "0";
				E("_ss_mwan_vps_ip_dst").value = "0";
				E("_ss_lb_dest").value = "0";
			}else{
				E("_ss_mwan_ping_dst").value = wans[0][0];
				E("_ss_mwan_china_dns_dst").value = wans[0][0];
				E("_ss_mwan_vps_ip_dst").value = wans[0][0];
				E("_ss_lb_dest").value = wans[0][0];
			}
			for ( var i = 0; i < wans.length; ++i ) {
				wans_value[i] = wans[i][0];
			}
			// now fill the dest in lb table
			if (dbus["ss_lb_type"] == "1"){
				if(ss_lb_nodes.length > 0){
					for ( var i = 0; i < ss_lb_nodes.length; ++i ) {
						if(wans.length > 1){
							var a = wans_value.indexOf(dbus["ssconf_basic_lb_dest_" + ss_lb_nodes[i]]);
							if(a != -1){
								$("#_ssconf_basic_lb_dest_" + ss_lb_nodes[i]).val(dbus["ssconf_basic_lb_dest_" + ss_lb_nodes[i]]);
							}else{
								// the user defined iface is offline
								$("#_ssconf_basic_lb_dest_" + ss_lb_nodes[i]).val("0");
							}
						}else if (wans.length == 0){
							$("#_ssconf_basic_lb_dest_" + ss_lb_nodes[i]).val("0");
						}else{
							$("#_ssconf_basic_lb_dest_" + ss_lb_nodes[i]).val(wans[0][0]);
						}
					}
				}
			}else{
				if(ssr_lb_nodes.length > 0){
					for ( var i = 0; i < ssr_lb_nodes.length; ++i ) {
						if(wans.length > 1){
							var a = wans_value.indexOf(dbus["ssrconf_basic_lb_dest_" + ssr_lb_nodes[i]]);
							if(a != -1){
								$("#_ssrconf_basic_lb_dest_" + ssr_lb_nodes[i]).val(dbus["ssrconf_basic_lb_dest_" + ssr_lb_nodes[i]]);
							}else{
								// the user defined iface is offline
								$("#_ssrconf_basic_lb_dest_" + ssr_lb_nodes[i]).val("0");
							}
						}else if (wans.length == 0){
							$("#_ssrconf_basic_lb_dest_" + ssr_lb_nodes[i]).val("0");
						}else{
							$("#_ssrconf_basic_lb_dest_" + ssr_lb_nodes[i]).val(wans[0][0]);
						}
					}
				}
			}
		}
		function get_wans_list(){
			var id = parseInt(Math.random() * 100000000);
			var postData = {"id": id, "method": "ss_getwans.sh", "params":[], "fields": ""};
			$.ajax({
				type: "POST",
				url: "/_api/",
				async:true,
				cache:false,
				data: JSON.stringify(postData),
				dataType: "json",
				success: function(response){
					if (response.result != "-1"){
						wans = eval(Base64.decode(response.result));
						wans  = wans.sort();
						if(wans.length > 1){
							wans.unshift(["0","?????????"]);
						}else if (wans.length == 0){
							wans = [["0","?????????"]];
						}
						console.log("??????????????????(??????)???", wans);
						mwan_set()
					}
				},
				error:function(){
					get_wans_list2();
				},
				timeout:1000
			});
		}
		
		function get_wans_list2(){
			XHR.get('/cgi-bin/luci/admin/network/mwan/overview/interface_status', null,
				function(x, mArray){
					if (mArray.wans){
						for ( var i = 0; i < mArray.wans.length; i++ ){
							if(mArray.wans[i].status == "online"){
								var wans2_temp = [];
								wans2_temp[0] = mArray.wans[i].ifname
								wans2_temp[1] = mArray.wans[i].name
								wans2.push(wans2_temp);
							}
						}
						wans2 = wans2.sort();
                        if(wans2.length > 1){
                            wans2.unshift(["0","?????????"]);
                        }else if (wans2.length == 0){
                            wans2 = [["0","?????????"]];
                        }
                        console.log("??????????????????(??????)???", wans2);
                        wans = wans2;
                        mwan_set();
					}else{
						statusDiv.innerHTML = '<strong>???????????? MWAN ??????</strong>';
						alert("???????????????????????????wan?????????\n ????????????????????????????????????")
					}
				}
			);
		}
		
		function get_arp_list(){
			var id5 = parseInt(Math.random() * 100000000);
			var postData1 = {"id": id5, "method": "ss_getarp.sh", "params":[], "fields": ""};
			$.ajax({
				type: "POST",
				url: "/_api/",
				async:true,
				cache:false,
				data: JSON.stringify(postData1),
				dataType: "json",
				success: function(response){
					if (response.result != "-1"){
						var s2 = response.result.split( '>' );
						for ( var i = 0; i < s2.length; ++i ) {
							option_arp_local[i] = [s2[ i ].split( '<' )[0], "???" + s2[ i ].split( '<' )[0] + "???", s2[ i ].split( '<' )[1], s2[ i ].split( '<' )[2]];
						}
						var node_acl = parseInt(dbus["ss_acl_node_max"]) || 0;
						for ( var i = 0; i < node_acl; ++i ) {
							option_arp_web[i] = [dbus["ss_acl_name_" + (i + 1)], "???" + dbus["ss_acl_name_" + (i + 1)] + "???", dbus["ss_acl_ip_" + (i + 1)], dbus["ss_acl_mac_" + (i + 1)]];
						}			
						option_arp_list = unique_array(option_arp_local.concat( option_arp_web ));
						ss_acl.setup();
					}
				},
				error:function(){
					ss_acl.setup();
				},
				timeout:1000
			});
		}
		function unique_array(array){
			var r = [];
			for(var i = 0, l = array.length; i < l; i++) {
				for(var j = i + 1; j < l; j++)
				if (array[i][0] === array[j][0]) j = ++i;
					r.push(array[i]);
			}
			return r.sort();;
		}
		function auto_node_sel(){
			node_sel = E('_ss_basic_node').value || 1;
			if (node_sel == 0){
				// calculate lb node max and lastlb nu
				var node_line = [];
				var all_kcp_node = [];
				for (var field in dbus) {
					node_line = field.split("_");
					if (node_line[2]  == "lb" && node_line[3]  == "enable"){
						all_kcp_node.push(node_line[4]);
					}
				}
				if(all_kcp_node.length > 0){
					var last_lb_node = Math.max.apply(null, all_kcp_node);
					var ss_lb_node_max = all_kcp_node.length
				}else{
					var last_lb_node = "";
					var ss_lb_node_max = "";
				}
				//now apply value to main pannel
				if (dbus["ss_lb_enable"] == 1 && last_lb_node){
					if (dbus["ss_lb_type"] == 1){ //ss
						dbus["ss_basic_type"] = "0";
						E('_ss_basic_rss_protocal').value = ""
						E('_ss_basic_rss_protocal_para').value = ""
						E('_ss_basic_rss_obfs').value = ""
						E('_ss_basic_rss_obfs_para').value = ""
						for (var i = 0; i < ssbasic.length; i++) {
							if (typeof (dbus["ssconf_basic_" + ssbasic[i] + "_" + last_lb_node]) == "undefined"){
								E('_ss_basic_' + ssbasic[i] ).value = ""
							}else{
								E('_ss_basic_' + ssbasic[i] ).value = dbus["ssconf_basic_" + ssbasic[i] + "_" + last_lb_node] || "";
							}
						}
						elem.display(PR('_ss_basic_rss_protocal'), PR('_ss_basic_rss_protocal_para'), false);
						elem.display(PR('_ss_basic_rss_obfs'), PR('_ss_basic_rss_obfs_para'), false);
						var a = (E('_ss_basic_ss_obfs').value == '0');
						elem.display(PR('_ss_basic_ss_obfs'), PR('_ss_basic_ss_obfs_host'), !a);
						elem.display(PR('_ss_basic_mode'), true);
						E('_ss_basic_server').value = "127.0.0.1";
						E('_ss_basic_port').value = dbus["ss_lb_port"];
						E('_ss_basic_mode').value = dbus["ss_basic_mode"];
					}else if (dbus["ss_lb_type"] == 2){ //ssr					
						dbus["ss_basic_type"] = "1";
						for (var i = 0; i < ssrbasic.length; i++) {
							if (typeof (dbus["ssrconf_basic_" + ssrbasic[i] + "_" + last_lb_node]) == "undefined"){
								E('_ss_basic_' + ssrbasic[i] ).value = ""
							}else{
								E('_ss_basic_' + ssrbasic[i] ).value = dbus["ssrconf_basic_" + ssrbasic[i] + "_" + last_lb_node] || "";
							}
						}
						elem.display(PR('_ss_basic_rss_protocal'), true);
						elem.display(PR('_ss_basic_rss_protocal_para'), (E('_ss_basic_rss_protocal_para').value.length > 1));
						elem.display(PR('_ss_basic_rss_obfs'), PR('_ss_basic_rss_obfs_para'), true);
						elem.display(PR('_ss_basic_ss_obfs'), PR('_ss_basic_ss_obfs_host'), false);
						elem.display(PR('_ss_basic_mode'), true);
						E('_ss_basic_server').value = "127.0.0.1";
						E('_ss_basic_port').value = dbus["ss_lb_port"];
						E('_ss_basic_mode').value = dbus["ss_basic_mode"];
					}else{
						elem.display(PR('_ss_basic_rss_protocal'), PR('_ss_basic_rss_protocal_para'), false);
						elem.display(PR('_ss_basic_rss_obfs'), PR('_ss_basic_rss_obfs_para'), false);
						elem.display(PR('_ss_basic_ss_obfs'), PR('_ss_basic_ss_obfs_host'), false);
						elem.display(PR('_ss_basic_mode'), false);
						alert("??????????????????????????????????????????");
						return false;
					}
				}else{
					elem.display(PR('_ss_basic_rss_protocal'), PR('_ss_basic_rss_protocal_para'), false);
					elem.display(PR('_ss_basic_rss_obfs'), PR('_ss_basic_rss_obfs_para'), false);
					elem.display(PR('_ss_basic_ss_obfs'), PR('_ss_basic_ss_obfs_host'), false);
					elem.display(PR('_ss_basic_mode'), false);
					alert("??????????????????????????????????????????");
					return false;
				}
			}else{ //not lb
				if (dbus["ssrconf_basic_rss_protocal_" + (node_sel - node_ss)]){ // using ssr
					dbus["ss_basic_type"] = "1";
					for (var i = 0; i < ssrbasic.length; i++) {
						if (typeof (dbus["ssrconf_basic_" + ssrbasic[i] + "_" + (node_sel - node_ss)]) == "undefined"){
							E('_ss_basic_' + ssrbasic[i] ).value = ""
						}else{
							E('_ss_basic_' + ssrbasic[i] ).value = dbus["ssrconf_basic_" + ssrbasic[i] + "_" + (node_sel - node_ss)] || "";
						}
					}
					elem.display(PR('_ss_basic_rss_protocal'), true);
					elem.display(PR('_ss_basic_rss_protocal_para'), (E('_ss_basic_rss_protocal_para').value.length > 1));
					elem.display(PR('_ss_basic_rss_obfs_para'), (E('_ss_basic_rss_obfs_para').value.length > 1));
					elem.display(PR('_ss_basic_rss_obfs'), true);
					elem.display(PR('_ss_basic_ss_obfs'), PR('_ss_basic_ss_obfs_host'), false);
					elem.display(PR('_ss_basic_mode'), true);
				}else{ //using ss
					dbus["ss_basic_type"] = "0";
					E('_ss_basic_rss_protocal').value = ""
					E('_ss_basic_rss_protocal_para').value = ""
					E('_ss_basic_rss_obfs').value = ""
					E('_ss_basic_rss_obfs_para').value = ""
					for (var i = 0; i < ssbasic.length; i++) {
						if (typeof (dbus["ssconf_basic_" + ssbasic[i] + "_" + node_sel]) == "undefined"){
							E('_ss_basic_' + ssbasic[i] ).value = ""
						}else{
							E('_ss_basic_' + ssbasic[i] ).value = dbus["ssconf_basic_" + ssbasic[i] + "_" + node_sel];
						}
					}
					var s = E('_ss_basic_ss_obfs').value == 0;
					elem.display(PR('_ss_basic_rss_protocal'), PR('_ss_basic_rss_protocal_para'), false);
					elem.display(PR('_ss_basic_rss_obfs'), PR('_ss_basic_rss_obfs_para'), false);
					elem.display(PR('_ss_basic_ss_obfs'), PR('_ss_basic_ss_obfs_host'), !s);
					elem.display(PR('_ss_basic_mode'), true);
				}
			}
		}

		function verifyFields(r){
			// pannel1: when node changed, the main pannel element and other element should be changed, too.
			if ( $(r).attr("id") == "_ss_basic_node" ) {
				auto_node_sel();
			}
			// pannel1: when check/uncheck ss_switch
			var a  = E('_ss_basic_enable').checked;
			if ( $(r).attr("id") == "_ss_basic_enable" ) {
				if(a){
					elem.display('ss_status_pannel', a);
					elem.display('ss_tabs', a);
					if (!dbus["ssconf_basic_node_max"] && !dbus["ssrconf_basic_node_max"]){
						tabSelect('app2');
						//alert("????????????????????????????????????????????????????????????????????????");
					}else{
						tabSelect('app1');
					}
				}else{
					tabSelect('fuckapp');
				}
			}
			
			// ------------------------
			// pannel kcp: hide kcp panel when kcp not enable
			// hide load banlacing pannel when game mode enabled
			var t1 = E('_ss_kcp_enable').checked;
			var t2 = E("_ss_basic_mode").value == "3"
			// kcp?????????????????????????????????????????????????????????????????????
			// ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
			if(t1 || t2){
				$("#app5-tab").hide();
				$("#_ss_basic_node option[value=0]").hide()
			}else{
				$("#app5-tab").show();
				$("#_ss_basic_node option[value=0]").show()
			}
			// pannel kcp: hide kcp parameter panel when kcp not enable
			if ( $(r).attr("id") == "_ss_kcp_enable" ) {
				elem.display('ss_kcp_tab_2', t1);
			}
			// pannel lb: hide kcp pannel and game mode when lb enabled
			var s1 = E('_ss_lb_enable').checked;
			var s2 = E('_ss_basic_node').value == "0";
			// ??????????????????????????????????????????????????????????????????????????????????????????kcp????????????
			if(s1 && s2){
				$("#app6-tab").hide();
				$("#_ss_basic_mode option[value=3]").hide();
				$("#_ss_acl_default_mode option[value=3]").hide();
				$("#_ss_acl_pannel_4 option[value=3]").hide();
			}else{
				$("#app6-tab").show();
				$("#_ss_basic_mode option[value=3]").show();
				$("#_ss_acl_default_mode option[value=3]").show();
				$("#_ss_acl_pannel_4 option[value=3]").show();
			}
			// ------------------------
			
			// pannel dns: display the description for ss dns plan
			if (E("_ss_dns_plan").value == "1"){
				$('#_ss_dns_plan_txt').html("??????dns??????gfwlist?????????????????????????????????????????????????????????dns?????????")
			}else{
				$('#_ss_dns_plan_txt').html("??????dns??????cdn????????????????????????????????????????????????????????????dns?????????")
			}
			
			// ------------------------
			// when change mode in acl tab, mode in pannel1 should also be changed
			if ( $(r).attr("id") == "_ss_acl_default_mode" ) {
				if (E("_ss_acl_default_mode").value != "0"){
					E("_ss_basic_mode").value = E("_ss_acl_default_mode").value;
				}
			}
			// pannel1: when change mode, the default acl mode should be also changed
			if (E("_ss_acl_default_mode").value != "0"){
				E("_ss_acl_default_mode").value = E("_ss_basic_mode").value;

			}
			// ------------------------
			// pannel dns:
			if (E("_ss_dns_foreign").value == "5"){
				elem.display(PR('_ss_dns_china'), false);
				elem.display(PR('_ss_isp_website_web'), false);
				elem.display(PR('_ss_dns_china_chinadns_txt'), true);
				elem.display(PR('_ss_cdn_chinadns_txt'), true);
				elem.display(PR('_ss_dns_china_pcap_txt'), false);
				elem.display(PR('_ss_cdn_pcap_txt'), false);
			}else if (E("_ss_dns_foreign").value == "6"){
				elem.display(PR('_ss_dns_china'), false);
				elem.display(PR('_ss_isp_website_web'), false);
				elem.display(PR('_ss_dns_china_chinadns_txt'), false);
				elem.display(PR('_ss_cdn_chinadns_txt'), false);
				elem.display(PR('_ss_dns_china_pcap_txt'), true);
				elem.display(PR('_ss_cdn_pcap_txt'), true);
			}else{
				elem.display(PR('_ss_dns_china'), true);
				elem.display(PR('_ss_isp_website_web'), true);
				elem.display(PR('_ss_dns_china_chinadns_txt'), false);
				elem.display(PR('_ss_dns_china_pcap_txt'), false);
				elem.display(PR('_ss_cdn_chinadns_txt'), false);
				elem.display(PR('_ss_cdn_pcap_txt'), false);
			}
			var c  = E('_ss_dns_china').value == '12';
			var d1 = E('_ss_dns_foreign').value == '1'; // dns2socks
			var d2 = E('_ss_dns_foreign').value == '2'; // ss-tunnel
			var d3 = E('_ss_dns_foreign').value == '3'; // dnscrypt-proxy
			var d4 = E('_ss_dns_foreign').value == '4'; // pndsd
			var d5 = E('_ss_dns_foreign').value == '5'; // ChinaDNS
			var d6 = E('_ss_dns_foreign').value == '6'; // ChinaDNS
			var e  = E('_ss_sstunnel').value == '4'; // ss_sstunnel user
			var f1 = E('_ss_pdnsd_method').value == '1'; // pdnsd udp
			var f2 = E('_ss_pdnsd_method').value == '2'; // pdnsd tcp
			var g1 = E('_ss_pdnsd_udp_server').value == '1'; // pdnsd dns2socks
			var g2 = E('_ss_pdnsd_udp_server').value == '2'; // pdnsd dnscrypt-proxy
			var g3 = E('_ss_pdnsd_udp_server').value == '3'; // pdnsd ss_tunnel
			var h  = E('_ss_pdnsd_udp_server_ss_tunnel').value == '4'; // pdnsd ss_tunnel = 4
			var i  = E('_ss_chinadns_china').value == '11'; // ChinaDNS china user
			var j1 = E('_ss_chinadns_foreign_method').value == '1'; // ChinaDNS dns2socks
			var j2 = E('_ss_chinadns_foreign_method').value == '2'; // ChinaDNS dnscrypt-proxy
			var j3 = E('_ss_chinadns_foreign_method').value == '3'; // ChinaDNS ss_tunnel
			var j4 = E('_ss_chinadns_foreign_method').value == '4'; // ChinaDNS user
			var k  = E('_ss_chinadns_foreign_sstunnel').value == '4'; // ChinaDNS user
			var n  = E('_ss_chinadns_foreign_dns2socks').value == '4'; // ChinaDNS user
			// DNS
			elem.display('_ss_dns_china_user', c);
			elem.display('_ss_dns2socks_user', d1);
			elem.display('_ss_sstunnel', d2);
			elem.display('_ss_sstunnel_user', d2 && e);
			elem.display('_ss_opendns', d3);
			// pdnsd method
			elem.display(PR('_ss_pdnsd_method'), d4);
			// pdnsd udp
			elem.display(PR('_ss_pdnsd_udp_server'), d4 && f1);
			elem.display('_ss_pdnsd_udp_server_dns2socks', d4 && f1 && g1);
			elem.display('_ss_pdnsd_udp_server_dnscrypt', d4 && f1 && g2);
			elem.display('_ss_pdnsd_udp_server_ss_tunnel', d4 && f1 && g3);
			elem.display('_ss_pdnsd_udp_server_ss_tunnel_user', d4 && f1 && g3 && h);
			// pdnsd tcp
			elem.display(PR('_ss_pdnsd_server_ip'), PR('_ss_pdnsd_server_port'), d4 && f2);
			// pndsd cache
			elem.display(PR('_ss_pdnsd_server_cache_min'), PR('_ss_pdnsd_server_cache_max'), d4);
			//ChinaDNS
			elem.display(PR('_ss_chinadns_china'), d5);
			elem.display('_ss_chinadns_china_user', d5 && i);
			elem.display(PR('_ss_chinadns_foreign_method'), d5);
			elem.display('_ss_chinadns_foreign_dns2socks', d5 && j1);
			elem.display('_ss_chinadns_foreign_dns2socks_user', d5 && j1 && n);
			elem.display('_ss_chinadns_foreign_dnscrypt', d5 && j2);
			elem.display('_ss_chinadns_foreign_sstunnel', d5 && j3);
			elem.display('_ss_chinadns_foreign_sstunnel_user', d5 && j3 && k);
			elem.display('_ss_chinadns_foreign_method_user', d5 && j4);
			elem.display('_ss_chinadns_foreign_method_user_txt', d5 && j4);
			var l1  = E('_ss_basic_rule_update').value == '1'; 
			elem.display('_ss_basic_rule_update_day', l1);
			elem.display('_ss_basic_rule_update_hr', l1);
			var l3  = E('_ss_basic_node_update').value == '1';
			elem.display('_ss_basic_node_update_day', l3);
			elem.display('_ss_basic_node_update_hr', l3);
			
			elem.display(elem.parentElem('_ss_basic_gfwlist_update', 'DIV'), l1);
			elem.display('_ss_basic_gfwlist_update_txt', l1);
			elem.display(elem.parentElem('_ss_basic_chnroute_update', 'DIV'), l1);
			elem.display('_ss_basic_chnroute_update_txt', l1);
			elem.display(elem.parentElem('_ss_basic_cdn_update', 'DIV'), l1);
			elem.display('_ss_basic_cdn_update_txt', l1);
			elem.display(elem.parentElem('_ss_basic_pcap_update', 'DIV'), l1);
			elem.display('_ss_basic_pcap_update_txt', l1);
			
			var m  = E('_ss_basic_dnslookup').value == '1';
			elem.display('_ss_basic_dnslookup_server', m);
			elem.display('_ss_basic_dnslookup_txt', m);
			var p1 = E('_ssr_subscribe_obfspara').value == '1';
			var p2 = E('_ssr_subscribe_obfspara').value == '2';
			elem.display('_ssr_subscribe_obfspara_text', p2);
			elem.display('_ssr_subscribe_obfspara_val', p2);
			var q = E('_ss_acl_default_port').value == '0';
			elem.display('_ss_acl_default_port_user', q);
			
			calculate_max_node();
		}
		function calculate_max_node(){
			var all_names_ss = [];
			var all_names_ssr = [];
			var all_names_sslb = [];
			var all_names_ssrlb = [];
			var all_nodes_of_ss = [];
			var all_nodes_of_ssr = [];
			var all_nodes_of_sslb = [];
			var all_nodes_of_ssrlb = [];
			//--------------------------------------
			// count node in ss
			for (var field in dbus) {
				names_ss = field.split("ssconf_basic_port_");
				all_names_ss.push(names_ss)
			}
			
			for ( var i = 0; i < all_names_ss.length; i++){
				if (all_names_ss[i][0] == ""){
					all_nodes_of_ss.push(all_names_ss[i][1]);
				}
			}
			if(all_nodes_of_ss.length > 0){
				dbus["ssconf_basic_max_node"] = Math.max.apply(null, all_nodes_of_ss);
			}else{
				dbus["ssconf_basic_max_node"] = "";
			}
			dbus["ssconf_basic_node_max"] = all_nodes_of_ss.length;
			//--------------------------------------
			// count node in ssr
			for (var field in dbus) {
				names_ssr = field.split("ssrconf_basic_port_");
				all_names_ssr.push(names_ssr)
			}	
			
			for ( var i = 0; i < all_names_ssr.length; i++){
				if (all_names_ssr[i][0] == ""){
					all_nodes_of_ssr.push(all_names_ssr[i][1]);
				}
			}
			if(all_nodes_of_ssr.length > 0){
				dbus["ssrconf_basic_max_node"] = Math.max.apply(null, all_nodes_of_ssr);
			}else{
				dbus["ssrconf_basic_max_node"] = "";
			}
			dbus["ssrconf_basic_node_max"] = all_nodes_of_ssr.length;
		}
		
		function NodetabSelect(obj){
			if(obj == "ss"){
				$("#SubTabSS").addClass('active');
				$("#SubTabSSR").removeClass('active');
				$("#SubTabMange").removeClass('active');
				$("#ss_node_tab").show();
				$("#ssr_node_tab").hide();
				$("#ssr_ping_tab").hide();
				$("#ssr_node_subscribe").hide();
				$("#ss_link_add").hide();
				$("#save-node").show();
				$("#cancel-button").show();
			}else if(obj == "ssr"){
				$("#SubTabSS").removeClass('active');
				$("#SubTabSSR").addClass('active');
				$("#SubTabMange").removeClass('active');
				$("#ss_node_tab").hide();
				$("#ssr_node_tab").show();
				$("#ssr_ping_tab").hide();
				$("#ssr_node_subscribe").hide();
				$("#ss_link_add").hide();
				$("#save-node").show();
				$("#cancel-button").show();
			}else if(obj == "manage"){
				$("#SubTabSS").removeClass('active');
				$("#SubTabSSR").removeClass('active');
				$("#SubTabMange").addClass('active');
				$("#ss_node_tab").hide();
				$("#ssr_node_tab").hide();
				$("#ssr_ping_tab").show();
				$("#ssr_node_subscribe").show();
				$("#ss_link_add").show();
				$("#save-node").hide();
				$("#cancel-button").hide();
			}
		}

		function tabSelect(obj){
			var tableX = ['app1-tab', 'app2-tab', 'app3-tab', 'app4-tab', 'app5-tab', 'app6-tab','app7-tab','app8-tab','app9-tab','app10-tab','app11-tab'];
			var boxX = ['boxr1', 'boxr2', 'boxr3', 'boxr4', 'boxr5', 'boxr6', 'boxr7', 'boxr8', 'boxr9', 'boxr10', 'boxr11'];
			var appX = ['app1', 'app2', 'app3', 'app4', 'app5', 'app6', 'app7', 'app8', 'app9', 'app10', 'app11'];
			for (var i = 0; i < tableX.length; i++){
				if(obj == appX[i]){
					$('#'+tableX[i]).addClass('active');
					$('.'+boxX[i]).show();
				}else{
					$('#'+tableX[i]).removeClass('active');
					$('.'+boxX[i]).hide();
				}
			}
			// here defined pannel level element hide/show
			// show hide ss basic pannel when ss loaded
			if(obj =='app1'){ // ??????
				var b  = E('_ss_basic_enable').checked;
				elem.display('ss_status_pannel', b);
				elem.display('ss_tabs', b);
				elem.display('ss_basic_tab', b);
			}
			// show hide some button and pannel when cliec tab
			if(obj =='app2'){ // ??????
				elem.display('save-button', false);
				elem.display('cancel-button', true);
				elem.display('ss_kcp_tab_2', false);
				var cur_sel_node = parseInt(dbus["ss_basic_node"]);
				if(cur_sel_node >= node_ss){
					NodetabSelect('ssr');
				}else{
					NodetabSelect('ss');
				}
			}else if(obj=='app9' || obj=='app4'){ // ????????????
				elem.display('save-button', false);
				elem.display('cancel-button', false);
				elem.display('ss_kcp_tab_2', false);
			}else if(obj=='app5'){ // ????????????
				elem.display('save-button', false);
				elem.display('cancel-button', true);
				elem.display('ss_kcp_tab_2', false);
			}else if(obj=='app6'){ // kcp
				elem.display('save-button', false);
				elem.display('cancel-button', true);
				elem.display('ss_kcp_tab_2', false);
				var a = E('_ss_kcp_enable').checked;
				elem.display('ss_kcp_tab_2', a);
			}else if(obj=='app11'){ //??????
				elem.display('save-button', false);
				elem.display('cancel-button', false);
				elem.display('ss_kcp_tab_2', false);
				noChange=0;
				setTimeout("get_log();", 200);
			}else if(obj=='fuckapp'){
				elem.display('ss_status_pannel', false);
				elem.display('ss_tabs', false);
				elem.display('ss_basic_tab', false);
				elem.display('ss_node_tab', false);
				elem.display('ssr_node_tab', false);
				elem.display('ss_dns_tab', false);
				elem.display('ss_wblist_tab', false);
				elem.display('ss_rule_tab', false);
				elem.display('ss_acl_tab', false);
				elem.display('ss_acl_tab_readme', false);
				elem.display('ss_addon_tab', false);
				elem.display('ss_log_tab', false);
				elem.display('ss_lb_tab', false);
				elem.display('lb_list', false);
				elem.display('ss_lb_tab_readme', false);
				elem.display('ss_kcp_tab_readme', false);
				elem.display('ss_kcp_tab_1', false);
				elem.display('ss_kcp_tab_2', false);
				elem.display('save-button', true);
				elem.display('save-node', false);
				elem.display('save-lb', false);
				elem.display('save-kcp', false);
			}else{
				elem.display('save-button', true);
				elem.display('ss_kcp_tab_2', false);
				elem.display('cancel-button', true);
				noChange=2001;
			}
		}
		function showMsg(Outtype, title, msg){
			$('#'+Outtype).html('<h5>'+title+'</h5>'+msg+'<a class="close"><i class="icon-cancel"></i></a>');
			$('#'+Outtype).show();
		}
		function delete_online_node(){
			// ss: collect node data from ss pannel
			if (!confirm("????????????????????????????")) { return false; }
			$.ajax({
				type: "GET",
				url: "/_api/ssrconf",
				dataType: "json",
				async:true,
				success: function(data){
					tabSelect('app11');
					var skipd_ssr = data.result[0];
					var all_ssrconf = ["ssrconf_basic_mode_", "ssrconf_basic_name_", "ssrconf_basic_server_", "ssrconf_basic_port_", "ssrconf_basic_password_", "ssrconf_basic_method_", "ssrconf_basic_rss_protocal_", "ssrconf_basic_rss_protocal_para_", "ssrconf_basic_rss_obfs_", "ssrconf_basic_rss_obfs_para_", "ssrconf_basic_server_ip_", "ssrconf_basic_lb_enable_", "ssrconf_basic_lb_policy_", "ssrconf_basic_lb_weight_", "ssrconf_basic_lb_dest_", "ssrconf_basic_group_"];
					//== get current using ss/ssr node number==
					var cur_sel_node = parseInt(dbus["ss_basic_node"]);
					var cur_kcp_node = parseInt(dbus["ss_kcp_node"]);
					if (cur_sel_node <= node_ss){
						var ss_orig_nu = cur_sel_node
					}else{
						var ssr_orig_nu = cur_sel_node - node_ss
					}
					// flush all element
					var skipd_temp_ssr = jQuery.extend({}, skipd_ssr);
					for (var field in skipd_temp_ssr) {
						skipd_temp_ssr[field] = "";
					}
					// start
					var data = ssr_node.getAllData();
					if(data.length > 0){
						var j = 0
						for ( var i = 0; i < data.length; ++i ) {
							// write node
							var data_nu = data[i][0];
							// ????????????group????????? + ??????????????? + ?????????????????? ??????
							if(!skipd_ssr["ssrconf_basic_group_" + data_nu] || ssr_orig_nu && ssr_orig_nu == data_nu || E('_ss_basic_online_node_del').value != "0" && skipd_ssr["ssrconf_basic_group_" + data_nu] != E('_ss_basic_online_node_del').value){
								console.log(data_nu);
								++j
								// write ss/kcp node
								if (parseInt(data_nu) == ssr_orig_nu){
									skipd_temp_ssr["ss_basic_node"] = j + node_ss;
								}
								if (parseInt(data_nu) == cur_kcp_node){
									skipd_temp_ssr["ss_kcp_node"] = j + node_ss;
								}
								// now write node data with no group info
								for ( var k = 0; k < all_ssrconf.length; ++k ) {
									var temp_val = skipd_ssr[all_ssrconf[k] + data_nu];
									if (temp_val){
										skipd_temp_ssr[all_ssrconf[k] + j] = temp_val;
									}
								}
								// alert when deleting node is under use
								// ???????????????????????????????????????????????????????????????????????????????????????????????????
								if (ssr_orig_nu == data_nu && E('_ss_basic_online_node_del').value == "0"){
									alert("???????????????????????????????????????,????????????????????????????????????");
								// ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
								}else if(ssr_orig_nu == data_nu && E('_ss_basic_online_node_del').value != "0" && skipd_ssr["ssrconf_basic_group_" + data_nu] == E('_ss_basic_online_node_del').value){
									alert("???????????????????????????????????????,????????????????????????????????????");
								}
							}
						}
						skipd_temp_ssr["ssrconf_basic_node_max"] = String(j);
						skipd_temp_ssr["ssrconf_basic_max_node"] = String(j);
					}else{
						skipd_temp_ssr["ssrconf_basic_node_max"] = "";
						skipd_temp_ssr["ssrconf_basic_max_node"] = "";
					}
					// ?????????????????????(ss_online_link_1 - 10)??? (ss_online_group_1 - 10)???????????????????????????????????????????????????????????????dbus????????????????????????
					// ??????????????????????????????????????????(E('_ss_basic_online_node_del').value != "0"),??????????????????????????????????????????????????????????????????????????????????????????
					var o = 1;
					for ( var n = 1; n <= 10; ++n ) {
						if(dbus["ss_online_group_" + n]){
							console.log("999")
							skipd_temp_ssr["ss_online_group_" + o] = "";
							skipd_temp_ssr["ss_online_link_" + o] = "";
							++o;
						}
					}
					console.log(skipd_temp_ssr);
					// ????????????????????????????????????
					var m = 1;
					for ( var l = 1; l <= 10; ++l ) {
						// ????????????????????????????????????????????? if ??? else if
						// dbus["ss_online_group_" + l] :????????????dbus??????????????????????????????(ss_online_link_1 - 10)????????????group???????????? (ss_online_group_1 - 10)??? dbus["ss_online_group_" + l]??????????????????
						// E('_ss_basic_online_node_del').value != "0" :?????????????????????????????????????????????
						// dbus["ss_online_group_" + l] != E('_ss_basic_online_node_del').value :?????????dbus["ss_online_group_" + l]?????????????????????????????????????????????????????????????????????????????????????????????skipd_temp_ssr??????
						if(dbus["ss_online_group_" + l] && E('_ss_basic_online_node_del').value && dbus["ss_online_group_" + l] != E('_ss_basic_online_node_del').value ){
							skipd_temp_ssr["ss_online_group_" + m] = dbus["ss_online_group_" + l];
							skipd_temp_ssr["ss_online_link_" + m] = dbus["ss_online_link_" + l];
							++m;
						// ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????ss_online_group_???ss_online_link_????????????
						// ???????????????dbus["ss_online_group_" + l] ??? E('_ss_basic_online_node_del').value ??????true????????????
						// ?????????????????????????????????ssr?????????group???????????????????????????????????????????????????????????????group??????????????????????????????????????????
						// ???????????????dbus????????????????????????????????????????????????
						// ????????????else?????????????????????????????????++m?????????????????????
						// ??????????????????????????????????????????????????????
						}else if(dbus["ss_online_group_" + l] && E('_ss_basic_online_node_del').value && skipd_ssr["ssrconf_basic_group_" + ssr_orig_nu] && skipd_ssr["ssrconf_basic_group_" + ssr_orig_nu] == E('_ss_basic_online_node_del').value){
							skipd_temp_ssr["ss_online_group_" + m] = dbus["ss_online_group_" + l];
							skipd_temp_ssr["ss_online_link_" + m] = dbus["ss_online_link_" + l];
							++m;
						}
					}
					
					console.log(skipd_temp_ssr);
					//==now post data==
					var id = parseInt(Math.random() * 100000000);
					var postData = {"id": id, "method": "ss_conf.sh", "params":["7"], "fields": skipd_temp_ssr };
					$.ajax({
						type: "POST",
						url: "/_api/",
						async: true,
						cache:false,
						data: JSON.stringify(postData),
						dataType: "json",
						success: function(response){
							if (response.result == id){
								setTimeout("window.location.reload()", 100);
							}else{
								showMsg("msg_error","????????????","<b>??????????????????????????????????????????" + response.result + "</b>");
								return false;
							}
						}
					});
				}
			});
		}
		
		function save_node(){
			status_time = 999999990;
			// ss: collect node data from ss pannel
			$.ajax({
				type: "GET",
				url: "/_api/ssconf,ssrconf",
				dataType: "json",
				async:true,
				success: function(datas){
					var all_ssconf_table = ["ssconf_basic_mode_", "ssconf_basic_name_", "ssconf_basic_server_", "ssconf_basic_port_", "ssconf_basic_password_", "ssconf_basic_method_", "ssconf_basic_ss_obfs_", "ssconf_basic_ss_obfs_host_" ];
					var all_ssconf_dbus = ["ssconf_basic_server_ip_", "ssconf_basic_lb_enable_", "ssconf_basic_lb_policy_", "ssconf_basic_lb_weight_", "ssconf_basic_lb_dest_" ];
					var all_ssrconf_table = ["ssrconf_basic_mode_", "ssrconf_basic_name_", "ssrconf_basic_server_", "ssrconf_basic_port_", "ssrconf_basic_password_", "ssrconf_basic_method_", "ssrconf_basic_rss_protocal_", "ssrconf_basic_rss_protocal_para_", "ssrconf_basic_rss_obfs_", "ssrconf_basic_rss_obfs_para_"];
					var all_ssrconf_dbus = ["ssrconf_basic_server_ip_", "ssrconf_basic_lb_enable_", "ssrconf_basic_lb_policy_", "ssrconf_basic_lb_weight_", "ssrconf_basic_lb_dest_", "ssrconf_basic_group_"];
					var skipd_ss = datas.result[0];
					var skipd_ssr = datas.result[1];
					//== get current using ss/ssr node number==
					var cur_sel_node = parseInt(dbus["ss_basic_node"]);
					var cur_kcp_node = parseInt(dbus["ss_kcp_node"]);
					if (cur_sel_node <= node_ss){
						var ss_orig_nu = cur_sel_node
					}else{
						var ssr_orig_nu = cur_sel_node - node_ss
					}
					//==ss: write all keeped node to tmp object==
					// flush all element
					var skipd_temp_ss = jQuery.extend({}, skipd_ss);
					for (var field in skipd_temp_ss) {
						skipd_temp_ss[field] = "";
					}
					// write element
					var data = ss_node.getAllData();
					if(data.length > 0){
						var j = 0
						for ( var i = 0; i < data.length; ++i ) {
							var keep_nu = data[i][0];
							++j;
							// write ss/kcp node
							if (parseInt(keep_nu) == ss_orig_nu){
								skipd_temp_ss["ss_basic_node"] = String(j);
							}
							if (parseInt(keep_nu) == cur_kcp_node){
								skipd_temp_ss["ss_kcp_node"] = String(j);
							}
							// write node
							for ( var k = 0; k < all_ssconf_table.length; ++k ) {
								var temp_val = data[i][k + 1];
								if (temp_val){
									skipd_temp_ss[all_ssconf_table[k] + j] = temp_val;
								}
							}
							for ( var o = 0; o < all_ssconf_dbus.length; ++o ) {
								var temp_val = skipd_ss[all_ssconf_dbus[o] + keep_nu];
								if (temp_val){
									skipd_temp_ss[all_ssconf_dbus[o] + j] = temp_val;
								}
							}
						}
						skipd_temp_ss["ssconf_basic_node_max"] = String(data.length);
						skipd_temp_ss["ssconf_basic_max_node"] = String(j);
					}else{
						skipd_temp_ss["ssconf_basic_node_max"] = "";
						skipd_temp_ss["ssconf_basic_max_node"] = "";
					}

					//==ssr: write all keeped node to tmp object==
					// flush all element in temp object
					var skipd_temp_ssr = jQuery.extend({}, skipd_ssr);
					
					for (var field in skipd_temp_ssr) {
						skipd_temp_ssr[field] = "";
					}
					// write element
					var data = ssr_node.getAllData();
					if(data.length > 0){
						var j = 0
						for ( var i = 0; i < data.length; ++i ) {
							var keep_nu = data[i][0];
							++j;
							// write ssr/kcp node
							if (parseInt(keep_nu) == ssr_orig_nu){
								skipd_temp_ssr["ss_basic_node"] = String(j + node_ss);
							}
							if (parseInt(keep_nu) == cur_kcp_node){
								skipd_temp_ssr["ss_kcp_node"] = String(j + node_ss);
							}
							for ( var k = 0; k < all_ssrconf_table.length; ++k ) {
								var temp_val = data[i][k + 1];
								if (temp_val){
									skipd_temp_ssr[all_ssrconf_table[k] + j] = temp_val
								}
							}
							for ( var o = 0; o < all_ssrconf_dbus.length; ++o ) {
								var temp_val = skipd_ssr[all_ssrconf_dbus[o] + keep_nu]
								if (temp_val){
									skipd_temp_ssr[all_ssrconf_dbus[o] + j] = temp_val
								}
							}
						}
						skipd_temp_ssr["ssrconf_basic_node_max"] = String(data.length);
						skipd_temp_ssr["ssrconf_basic_max_node"] = String(j);
					}else{
						skipd_temp_ssr["ssrconf_basic_node_max"] = "";
						skipd_temp_ssr["ssrconf_basic_max_node"] = "";
					}
					//==now post data==
					var skipd_temp = $.extend({}, skipd_temp_ss, skipd_temp_ssr);
					
					var id = parseInt(Math.random() * 100000000);
					var postData = {"id": id, "method": "ss_conf.sh", "params":[9], "fields": skipd_temp};
					showMsg("msg_warring","?????????????????????","<b>??????????????????????????????????????????????????????</b>");
					$.ajax({
						url: "/_api/",
						type: "POST",
						async:true,
						cache:false,
						dataType: "json",
						data: JSON.stringify(postData),
						success: function(response){
							if (response.result == id){
								$('#msg_warring').hide();
								showMsg("msg_success","????????????","<b>?????????????????????????????????...</b>");
								setTimeout("window.location.reload()", 100);
								//x = 4;
								//count_down_switch();
							}else{
								$('#msg_warring').hide();
								showMsg("msg_error","????????????","<b>??????????????????????????????????????????" + response.result + "</b>");
								return false;
							}
						},
						error: function(){
							showMsg("msg_error","??????","<b>?????????????????????????????????????????????</b>");
						}
					});
				}
			});
		}
		
		function save(){
			status_time = 999999990;
			setTimeout("tabSelect('app11')", 500);
			E("_ss_basic_status_foreign").innerHTML = "???????????? - ?????????...?????????????????????";
			E("_ss_basic_status_china").innerHTML = "???????????? - ?????????...?????????????????????";
			E("_ss_basic_kcp_status").innerHTML = "KCP?????? - ?????????...?????????????????????";
			E("_ss_basic_lb_status").innerHTML = "???????????? - ?????????...?????????????????????";
			var paras_chk = ["enable", "gfwlist_update", "chnroute_update", "cdn_update", "pcap_update", "chromecast", "online_links_goss"];
			var paras_inp = ["ss_basic_node", "ss_basic_mode", "ss_basic_server", "ss_basic_port", "ss_basic_password", "ss_basic_method", "ss_basic_ss_obfs", "ss_basic_ss_obfs_host", "ss_basic_rss_protocal", "ss_basic_rss_protocal_para", "ss_basic_rss_obfs", "ss_basic_rss_obfs_para", "ss_dns_plan", "ss_dns_china", "ss_dns_china_user", "ss_dns_foreign", "ss_dns2socks_user", "ss_sstunnel", "ss_sstunnel_user", "ss_opendns", "ss_pdnsd_method", "ss_pdnsd_udp_server", "ss_pdnsd_udp_server_dns2socks", "ss_pdnsd_udp_server_dnscrypt", "ss_pdnsd_udp_server_ss_tunnel", "ss_pdnsd_udp_server_ss_tunnel_user", "ss_pdnsd_server_ip", "ss_pdnsd_server_port", "ss_pdnsd_server_cache_min", "ss_pdnsd_server_cache_max", "ss_chinadns_china", "ss_chinadns_china_user", "ss_chinadns_foreign_method", "ss_chinadns_foreign_dns2socks", "ss_chinadns_foreign_dns2socks_user", "ss_chinadns_foreign_dnscrypt", "ss_chinadns_foreign_sstunnel", "ss_chinadns_foreign_sstunnel_user", "ss_chinadns_foreign_method_user", "ss_basic_rule_update", "ss_basic_rule_update_day", "ss_basic_rule_update_hr", "ss_basic_refreshrate", "ss_basic_bypass", "ss_basic_dnslookup", "ss_basic_dnslookup_server", "ss_acl_default_mode", "ss_acl_default_port", "ssr_subscribe_mode", "ssr_subscribe_obfspara", "ssr_subscribe_obfspara_val", "ss_mwan_ping_dst", "ss_mwan_china_dns_dst", "ss_mwan_vps_ip_dst", "ss_basic_node_update", "ss_basic_node_update_day", "ss_basic_node_update_hr"];
			// collect data from checkbox
			for (var i = 0; i < paras_chk.length; i++) {
				dbus["ss_basic_" + paras_chk[i]] = E('_ss_basic_' + paras_chk[i] ).checked ? '1':'0';
			}
			// data from other element
			for (var i = 0; i < paras_inp.length; i++) {
				if (typeof(E('_' + paras_inp[i] ).value) == "undefined"){
					dbus[paras_inp[i]] = "";
				}else{
					dbus[paras_inp[i]] = E('_' + paras_inp[i]).value;
				}
			}
			// data need base64 encode
			var paras_base64 = ["ss_wan_white_ip", "ss_wan_white_domain", "ss_wan_black_ip", "ss_wan_black_domain", "ss_isp_website_web", "ss_dnsmasq",];
			for (var i = 0; i < paras_base64.length; i++) {
				if (typeof(E('_' + paras_base64[i] ).value) == "undefined"){
					dbus[paras_base64[i]] = "";
				}else{
					dbus[paras_base64[i]] = Base64.encode(E('_' + paras_base64[i]).value);
				}
			}
			// collect node data under using from the main pannel incase of data change
			node_sel = E('_ss_basic_node').value || 1;
			if (node_sel != 0){
				if (dbus["ssrconf_basic_rss_protocal_" + (node_sel - node_ss)]){ // using ssr
					for ( var i = 0; i < ssrbasic.length; i++){
						if (typeof (E('_ss_basic_' + ssrbasic[i] ).value) == "undefined"){
							dbus["ssrconf_basic_" + ssrbasic[i] + "_" + (node_sel - node_ss) ] = ""
						}else{
							dbus["ssrconf_basic_" + ssrbasic[i] + "_" + (node_sel - node_ss) ] = E('_ss_basic_' + ssrbasic[i] ).value;
						}
					}
				}else{ //ss
					for ( var i = 0; i < ssbasic.length; i++){
						if (typeof (E('_ss_basic_' + ssbasic[i] ).value) == "undefined"){
							dbus["ssconf_basic_" + ssbasic[i] + "_" + node_sel ] = ""
						}else{
							dbus["ssconf_basic_" + ssbasic[i] + "_" + node_sel ] = E('_ss_basic_' + ssbasic[i] ).value;
						}
					}
					// define ss node max when no node
					if (typeof(dbus["ssconf_basic_node_max"]) == "undefined" && typeof(dbus["ssrconf_basic_node_max"]) == "undefined"){
						dbus["ssconf_basic_node_max"] = "1"
						dbus["ssconf_basic_name_1"] = "??????1"
					}
				}
			}
			// collect acl data from acl pannel
			var ss_acl_conf = ["ss_acl_name_", "ss_acl_ip_", "ss_acl_mac_", "ss_acl_mode_", "ss_acl_port_", "ss_acl_port_user_" ];
			// mark all acl data for delete first
			for ( var i = 1; i <= dbus["ss_acl_node_max"]; i++){
				for ( var j = 0; j < ss_acl_conf.length; ++j ) {
					dbus[ss_acl_conf[j] + i ] = ""
				}
			}
			var data4 = ss_acl.getAllData();
			if(data4.length > 0){
				for ( var i = 0; i < data4.length; ++i ) {
					for ( var j = 1; j < ss_acl_conf.length; ++j ) {
						//dbus[ss_acl_conf[0] + (i + 1)] = data4[i][0] || "??????????????? - " + (i + 1);
						dbus[ss_acl_conf[0] + (i + 1)] = data4[i][0];
						dbus[ss_acl_conf[j] + (i + 1)] = data4[i][j];
					}
				}
				dbus["ss_acl_node_max"] = data4.length;
			}else{
				dbus["ss_acl_node_max"] = "";
			}
			// now post data
			var id3 = parseInt(Math.random() * 100000000);
			var postData3 = {"id": id3, "method": "ss_config.sh", "params":[1], "fields": dbus};
			showMsg("msg_warring","?????????????????????","<b>??????????????????????????????????????????????????????</b>");
			$.ajax({
				url: "/_api/",
				type: "POST",
				async:true,
				cache:false,
				dataType: "json",
				data: JSON.stringify(postData3),
				success: function(response){
					if (response.result == id3){
						if(E('_ss_basic_enable').checked){
							// show script running status
							showMsg("msg_success","????????????","<b>??????????????????</b>");
							$('#msg_warring').hide();
							setTimeout("$('#msg_success').hide()", 500);
							x = 4;
							count_down_switch();
						}else{
							// when shut down ss finished, close the log tab
							$('#msg_warring').hide();
							showMsg("msg_success","????????????","<b>koolss???????????????</b>");
							setTimeout("$('#msg_success').hide()", 4000);
							setTimeout("tabSelect('fuckapp')", 4000);
						}
					}else{
						$('#msg_warring').hide();
						showMsg("msg_error","????????????","<b>????????????????????????????????????" + response.result + "</b>");
					}
				},
				error: function(){
					showMsg("msg_error","??????","<b>?????????????????????????????????????????????</b>");
					status_time = 1;
				}
			});
		}

		function save_lb(){
			status_time = 999999990;
			setTimeout("tabSelect('app11')", 500);
			var lb_chk = ["ss_lb_enable", "ss_lb_heartbeat"];
			var lb_inp = ["ss_lb_account", "ss_lb_password", "ss_lb_port", "ss_lb_up", "ss_lb_down", "ss_lb_interval" ];
			// collect data from checkbox
			for (var i = 0; i < lb_chk.length; i++) {
				dbus[lb_chk[i]] = E('_' + lb_chk[i] ).checked ? '1':'0';
			}
			// data from other element
			for (var i = 0; i < lb_inp.length; i++) {
				if (typeof(E('_' + lb_inp[i] ).value) == "undefined"){
					dbus[lb_inp[i]] = "";
				}else{
					dbus[lb_inp[i]] = E('_' + lb_inp[i]).value;
				}
			}
			// mark all lb value in node date for delete first
			for ( var i = 1; i <= dbus["ssconf_basic_max_node"]; i++){
				dbus["ssconf_basic_lb_enable_" + i ] = ""
				dbus["ssconf_basic_lb_policy_" + i ] = ""
				dbus["ssconf_basic_lb_weight_" + i ] = ""
				dbus["ssconf_basic_lb_dest_" + i ] = ""
			}
			for ( var i = 1; i <= dbus["ssrconf_basic_max_node"]; i++){
				dbus["ssrconf_basic_lb_enable_" + i ] = ""
				dbus["ssrconf_basic_lb_policy_" + i ] = ""
				dbus["ssrconf_basic_lb_weight_" + i ] = ""
				dbus["ssrconf_basic_lb_dest_" + i ] = ""
			}
			// now store lb value in node data
			if (dbus["ss_lb_type"] == "1"){
				var data = lb.getAllData();
				if(data.length > 0){
					for ( var i = 0; i < data.length; ++i ) {
						dbus["ssconf_basic_lb_enable_" + data[i][1] ] = 1;
						dbus["ssconf_basic_lb_policy_" + data[i][1] ] = data[i][7];
						dbus["ssconf_basic_lb_weight_" + data[i][1] ] = data[i][6];
						//dbus["ssconf_basic_lb_dest_" + data[i][1] ] = data[i][5];
						id = $(data[i][5]).attr("id");
						name = $(data[i][5]).attr("name");
						dbus[name] = $("#" + id).val();
					}
					dbus["ss_lb_node_max"] = data.length;
					dbus["ss_basic_type"] = 0;
				}else{
					dbus["ss_lb_node_max"] = "";
				}
			}else{
				var data = lb.getAllData();
				if(data.length > 0){
					for ( var i = 0; i < data.length; ++i ) {
						dbus["ssrconf_basic_lb_enable_" + data[i][1] ] = 1;
						dbus["ssrconf_basic_lb_policy_" + data[i][1] ] = data[i][7];
						dbus["ssrconf_basic_lb_weight_" + data[i][1] ] = data[i][6];
						//dbus["ssrconf_basic_lb_dest_" + data[i][1] ] = data[i][5];
						id = $(data[i][5]).attr("id");
						name = $(data[i][5]).attr("name");
						dbus[name] = $("#" + id).val();
					}
					dbus["ss_lb_node_max"] = data.length;
					dbus["ss_basic_type"] = 1;
				}else{
					dbus["ss_lb_node_max"] = "";
				}
			}
			// now post data
			var id = parseInt(Math.random() * 100000000);
			var postData = {"id": id, "method": "ss_config.sh", "params":[2], "fields": dbus};
			showMsg("msg_warring","?????????????????????","<b>??????????????????????????????????????????????????????</b>");
			$.ajax({
				url: "/_api/",
				type: "POST",
				async:true,
				cache:false,
				dataType: "json",
				data: JSON.stringify(postData),
				success: function(response){
					if (response.result == id){
						if(E('_ss_basic_node').value == 0 && E('_ss_basic_enable').checked){
							save();
						}else{
							window.location.reload();
						}
					}else{
						$('#msg_warring').hide();
						showMsg("msg_error","????????????","<b>??????????????????????????????????????????" + response.result + "</b>");
					}
				},
				error: function(){
					showMsg("msg_error","??????","<b>?????????????????????????????????????????????</b>");
				}
			});
		}
		function save_kcp(){
			if(!E('_ss_kcp_node').value){
				alert("?????????KCP?????????");
				return false;
			}
			status_time = 999999990;
			setTimeout("tabSelect('app11')", 500);
			var kcp_chk = ["ss_kcp_enable", "ss_kcp_compon"];
			var kcp_inp = ["ss_kcp_node", "ss_kcp_port", "ss_kcp_password", "ss_kcp_mode", "ss_kcp_crypt", "ss_kcp_mtu", "ss_kcp_sndwnd", "ss_kcp_rcvwnd", "ss_kcp_conn", "ss_kcp_config" ];
			// collect data from checkbox
			for (var i = 0; i < kcp_chk.length; i++) {
				dbus[kcp_chk[i]] = E('_' + kcp_chk[i] ).checked ? '1':'0';
			}
			// data from other element
			for (var i = 0; i < kcp_inp.length; i++) {
				if (!E('_' + kcp_inp[i] ).value){
					dbus[kcp_inp[i]] = "";
				}else{
					dbus[kcp_inp[i]] = E('_' + kcp_inp[i]).value;
				}
			}
			// store kcp_para
			var kcp_node_sel=E('_ss_kcp_node').value;
			if (dbus["ssrconf_basic_rss_protocal_" + (kcp_node_sel - node_ss)]){ //ssr
				dbus["ss_kcp_server"] = dbus["ssrconf_basic_server_" + (kcp_node_sel - node_ss)];
				if (dbus["ssrconf_basic_server_ip_" + (kcp_node_sel - node_ss)]){
					dbus["ss_kcp_server"] = dbus["ssrconf_basic_server_ip_" + (kcp_node_sel - node_ss)];
				}
			}else{ //ss
				dbus["ss_kcp_server"] = dbus["ssconf_basic_server_" + kcp_node_sel];
			}
			// now post data
			var id = parseInt(Math.random() * 100000000);
			var postData = {"id": id, "method": "ss_config.sh", "params":[2], "fields": dbus};
			showMsg("msg_warring","?????????????????????","<b>??????????????????????????????????????????????????????</b>");
			$.ajax({
				url: "/_api/",
				type: "POST",
				async:true,
				cache:false,
				dataType: "json",
				data: JSON.stringify(postData),
				success: function(response){
					if (response.result == id){
						if(dbus["ss_basic_node"] == dbus["ss_kcp_node"] ){
							if(E('_ss_kcp_enable').checked){
								save();
							}else{
								window.location.reload();
							}
						}else{
							if(E('_ss_kcp_enable').checked){
								alert("???????????????kcp?????????\n?????????????????????????????????????????????kcp?????????????????????????????????kcp???");
							}
							window.location.reload();
						}
					}else{
						$('#msg_warring').hide();
						showMsg("msg_error","????????????","<b>??????kcp??????????????????????????????" + response.result + "</b>");
					}
				},
				error: function(){
					showMsg("msg_error","??????","<b>?????????????????????????????????????????????</b>");
				}
			});
		}

		function get_log(){
			$.ajax({
				url: '/_temp/ss_log.txt',
				type: 'GET',
				dataType: 'html',
				async: true,
				cache:false,
				success: function(response) {
					var retArea = E("_ss_basic_log");
					if (response.search("XU6J03M6") != -1) {
						retArea.value = response.replace("XU6J03M6", " ");
						retArea.scrollTop = retArea.scrollHeight;
						return true;
					}
					if (_responseLen == response.length) {
						noChange++;
					} else {
						noChange = 0;
					}
					if (noChange > 8000) {
						//tabSelect("app1");
						return false;
					} else {
						setTimeout("get_log();", 100); //100 is radical but smooth!
					}
					retArea.value = response;
					retArea.scrollTop = retArea.scrollHeight;
					_responseLen = response.length;
				},
				error: function() {
					E("_ss_basic_log").value = "?????????????????????";
				}
			});
		}
		function count_down_switch() {
			if (x == "0") {
				//tabSelect("app1");
				setTimeout("window.location.reload()", 500);
			}
			if (x < 0) {
				return false;
			}
				--x;
			setTimeout("count_down_switch();", 500);
		}
		function init_layout(){
			if(!cookie.get('ss_layout')){
				cookie.set('ss_layout', 1);
			}
			if (cookie.get('ss_layout') == '1') {
				$(".box, #ss_tabs").css("max-width", "1122px")
				$("#ss_layout_switch").attr("class", "narrow");
				$("#ss_layout_switch").html('<i class="icon-chevron-left"></i><i class="icon-chevron-right"></i>');
			}else{
				$(".box, #ss_tabs").css("max-width", "100%");
				$("#ss_layout_switch").attr("class", "wide");
				$("#ss_layout_switch").html('<i class="icon-chevron-right"></i><i class="icon-chevron-left"></i>');
			}
		}
		function switch_Width() {
			if($("#ss_layout_switch").hasClass("narrow")) {
				$("#ss_layout_switch").attr("class", "wide");
				$(".box, #ss_tabs").css("max-width", "100%");
				$("#ss_layout_switch").html('<i class="icon-chevron-right"></i><i class="icon-chevron-left"></i>');
				cookie.set('ss_layout', 0);
			} else {
				$("#ss_layout_switch").attr("class", "narrow");
				$(".box, #ss_tabs").css("max-width", "1122px");
				$("#ss_layout_switch").html('<i class="icon-chevron-left"></i><i class="icon-chevron-right"></i>');
				cookie.set('ss_layout', 1);
			}
		}
		function toggleVisibility(whichone) {
			if(E('sesdiv' + whichone).style.display=='') {
				E('sesdiv' + whichone).style.display='none';
				E('sesdiv' + whichone + 'showhide').innerHTML='<i class="icon-chevron-up"></i>';
				cookie.set('ss_' + whichone + '_vis', 0);
			} else {
				E('sesdiv' + whichone).style.display='';
				E('sesdiv' + whichone + 'showhide').innerHTML='<i class="icon-chevron-down"></i>';
				cookie.set('ss_' + whichone + '_vis', 1);
			}
		}
		function update_rules_now(arg){
			if (arg == 5){
				shellscript = 'ss_rule_update.sh';
			}
			var id6 = parseInt(Math.random() * 100000000);
			var postData = {"id": id6, "method": shellscript, "params":[], "fields": ""};
			$.ajax({
				type: "POST",
				url: "/_api/",
				async: true,
				cache:false,
				data: JSON.stringify(postData),
				dataType: "json",
				success: function(response){
					if(response){
						setTimeout("window.location.reload()", 500);
						return true;
					}
				}
			});
			tabSelect("app11");
		}

		function manipulate_conf(script, arg){
			var dbus3 = {};
			if(arg == 1 || arg == 3 || arg == 5 || arg == 6 ){
				tabSelect("app11");
				dbus3 = [];
			}else if(arg == 2){
				tabSelect("app11");
				dbus3["ss_kcp_enable"] = "0";
				dbus3["ss_lb_enable"] = "0";
			}else if(arg == 4){
				dbus3 = [];
			}else if(arg == 'add'){
				tabSelect("app11");
				var data = ss_link.getAllData();
				if(data.length > 0){
					for ( var i = 0; i < 20; ++i ){
						if(data[i]){
							dbus3["ss_base64_link_" + (i + 1) ] = data[i][0];
						}else{
							dbus3["ss_base64_link_" + (i + 1) ] = "";
						}
					}
				}
			}else if(arg == 7 || arg == 8){
				tabSelect("app11");
				var data = online_link.getAllData();
				if(data.length > 0){
					for ( var i = 0; i < 10; ++i ){
						if(data[i]){
							dbus3["ss_online_link_" + (i + 1) ] = data[i][0];
						}else{
							dbus3["ss_online_link_" + (i + 1) ] = "";
							dbus3["ss_online_group_" + (i + 1) ] = "";
						}
					}
				}
				dbus3["ssr_subscribe_mode"] = E("_ssr_subscribe_mode").value;
				dbus3["ssr_subscribe_obfspara"] = E("_ssr_subscribe_obfspara").value;
				dbus3["ssr_subscribe_obfspara_val"] = E("_ssr_subscribe_obfspara_val").value;
				dbus3["ss_basic_node_update"] = E("_ss_basic_node_update").value;
				dbus3["ss_basic_node_update_day"] = E("_ss_basic_node_update_day").value;
				dbus3["ss_basic_node_update_hr"] = E("_ss_basic_node_update_hr").value;
				dbus3["ss_basic_online_links_goss"] = E("_ss_basic_online_links_goss").checked ? '1':'0';
				
			}else if(arg == 9){
				dbus3["ss_mwan_ping_dst"] = E("_ss_mwan_ping_dst").value;
				dbus3["ss_mwan_china_dns_dst"] = E("_ss_mwan_china_dns_dst").value;
				dbus3["ss_mwan_vps_ip_dst"] = E("_ss_mwan_vps_ip_dst").value;
			}else if(arg == 10){
				dbus3["ss_basic_rule_update"] = E("_ss_basic_rule_update").value;
				dbus3["ss_basic_rule_update_day"] = E("_ss_basic_rule_update_day").value;
				dbus3["ss_basic_rule_update_hr"] = E("_ss_basic_rule_update_hr").value;
				dbus3["ss_basic_gfwlist_update"] = E("_ss_basic_gfwlist_update").checked ? '1':'0';
				dbus3["ss_basic_chnroute_update"] = E("_ss_basic_chnroute_update").checked ? '1':'0';
				dbus3["ss_basic_cdn_update"] = E("_ss_basic_cdn_update").checked ? '1':'0';
				dbus3["ss_basic_pcap_update"] = E("_ss_basic_pcap_update").checked ? '1':'0';
			}
			var id = parseInt(Math.random() * 100000000);
			var postData = {"id": id, "method": script, "params":[arg], "fields": dbus3 };
			$.ajax({
				type: "POST",
				url: "/_api/",
				async: true,
				cache:false,
				data: JSON.stringify(postData),
				dataType: "json",
				success: function(response){
					if (script == "ss_conf.sh"){
						if(arg == 1 || arg == 2 || arg == 3 || arg == 7 || arg == 8 || arg == 9 || arg == 10 || arg == 'add'){
							setTimeout("window.location.reload()", 200);
						}else if (arg == 5){
							setTimeout("window.location.reload()", 1000);
						}else if (arg == 4){
							var a = document.createElement('A');
							a.href = "/files/ss_conf_backup.sh";
							a.download = 'ss_conf_backup.sh';
							document.body.appendChild(a);
							a.click();
							document.body.removeChild(a);
						}else if (arg == 6){
							var b = document.createElement('A')
							b.href = "/files/koolss.tar.gz"
							b.download = 'koolss_' + dbus["ss_version"] + '.tar.gz'
							document.body.appendChild(b);
							b.click();
							document.body.removeChild(b);
							x=10;
							count_down_switch();
						}
					}else if(script == "ss_online_update.sh"){
						window.location.reload();
					}
				}
			});
		}
		function restore_conf(){
			var filename = $("#file").val();
			filename = filename.split('\\');
			filename = filename[filename.length-1];
			var filelast = filename.split('.');
			filelast = filelast[filelast.length-1];
			if(filelast !='sh'){
				alert('??????????????????????????????');
				return false;
			}
			var formData = new FormData();
			formData.append('ss_conf_backup.sh', $('#file')[0].files[0]);
			$('.popover').html('??????????????????????????????');
			//changeButton(true);
			$.ajax({
				url: '/_upload',
				type: 'POST',
				async: true,
				cache:false,
				data: formData,
				processData: false,
				contentType: false,
				complete:function(res){
					if(res.status==200){
						manipulate_conf('ss_conf.sh', 5);
					}
				}
			});
		}
		
	</script>
	<div class="box" style="margin-top: 0px">
		<div class="heading">
			<span id="_ss_version"><font color="#1bbf35"></font></span>
			<a href="#soft-center.asp" class="btn" style="float:right;border-radius:3px;margin-right:5px;margin-top:0px;cursor: pointer">??????</a>
			<a id="ss_layout_switch" class="narrow" onclick="switch_Width();" style="float:right;border-radius:3px;margin-right:5px;margin-top:0px;cursor: pointer;"><i class="icon-chevron-right"></i><i class="icon-chevron-left"></i></a>
		</div>
		<div class="content">
			<div id="ss_switch_pannel" class="section">
				<fieldset>
					<label class="col-sm-3 control-left-label" for="_undefined">koolss??????</label>
						<div class="switch_field" style="display:table-cell;float: left;">
							<label for="_ss_basic_enable">
								<input type="checkbox" class="switch" name="ss_basic_enable" onclick="verifyFields(this, 1)" onchange="verifyFields(this, 1)" id="_ss_basic_enable" style="display: none;"/>
								<div class="switch_container" >
									<div class="switch_bar"></div>
									<div class="switch_circle transition_style">
										<div></div>
									</div>
								</div>
							</label>
						</div>
				</fieldset>
			</div>
			<script type="text/javascript">
				E("_ss_basic_enable").checked = dbus["ss_basic_enable"] == 1 ? true : false
			</script>
			<hr />
			<fieldset id="ss_status_pannel" style="cursor: pointer;" title="??????ip????????????">
				<label class="col-sm-3 control-left-label" id="ss_status_title">koolss????????????</label>
				<div class="col-sm-9">
					<font id="_ss_basic_status_foreign" name="ss_basic_status_foreign" color="#1bbf35">????????????: waiting...</font>
				</div>
				<div class="col-sm-9" style="margin-top:2px">
					<font id="_ss_basic_status_china" name="ss_basic_status_china" color="#1bbf35">????????????: waiting...</font>
				</div>
				<div class="col-sm-9" style="margin-top:2px;display:none;">
					<font id="_ss_basic_kcp_status" name="ss_basic_kcp_status" color="#1bbf35">KCP??????: waiting...</font>
				</div>
				<div class="col-sm-9" style="margin-top:2px;display:none;">
					<font id="_ss_basic_lb_status" name="ss_basic_lb_status" color="#1bbf35">????????????: waiting...</font>
				</div>
			</fieldset>
		</div>
	</div>
	<ul id="ss_tabs" class="nav nav-tabs">
		<li><a href="javascript:void(0);" onclick="tabSelect('app1');" id="app1-tab" class="active" style="width:102px"><i class="icon-system"></i> ????????????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app2');" id="app2-tab" style="width:102px"><i class="icon-globe"></i> ????????????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app3');" id="app3-tab" style="width:102px"><i class="icon-tools"></i> DNS??????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app4');" id="app4-tab" style="width:102px"><i class="icon-hammer" style="margin-left:-6px"></i> ???WAN??????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app5');" id="app5-tab" style="width:102px"><i class="icon-cloud"></i> ????????????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app6');" id="app6-tab" style="width:102px"><i class="icon-graphs"></i> KCP??????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app7');" id="app7-tab" style="width:102px"><i class="icon-toggle-nav"></i> ????????????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app8');" id="app8-tab" style="width:102px"><i class="icon-lock"></i> ????????????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app9');" id="app9-tab" style="width:102px"><i class="icon-cmd"></i> ????????????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app10');" id="app10-tab" style="width:102px"><i class="icon-wake"></i> ????????????</a></li>
		<li><a href="javascript:void(0);" onclick="tabSelect('app11');" id="app11-tab" style="width:102px"><i class="icon-hourglass"></i> ????????????</a></li>	
	</ul>
	<!-- ------------------ ???????????? --------------------- -->
	<div class="box boxr1" id="ss_basic_tab" style="margin-top: 0px;">
		<div class="heading"></div>
		<div class="content" style="margin-top: -20px;">
			<div id="ss_basic_pannel" class="section"></div>
			<script type="text/javascript">
				join_node();
				if (!dbus["ssconf_basic_node_max"] && !dbus["ssrconf_basic_node_max"]){
					$('#ss_basic_pannel').forms([
						{ title: '????????????', name:'ss_basic_node',type:'select',style:select_style,options:[['1', '??????1']], value: "1"}
					]);
				}else{
					if (dbus["ss_basic_double"] != 1){
						$('#ss_basic_pannel').forms([
							{ title: '????????????', name:'ss_basic_node',type:'select',style:select_style,options:option_node_name, value: dbus.ss_basic_node || "1"}
						]);
					}else{
						$('#ss_basic_pannel').forms([
							{ title: '????????????', multi: [
								{ title: '????????????', name:'ss_basic_node',type:'select',style:select_style,options:option_node_name, value: dbus.ss_basic_node || "1", suffix: ' &nbsp;&nbsp;'},
								{ title: '????????????', name:'ss_basic_node_1',type:'select',style:select_style,options:option_node_name, value: dbus.ss_basic_node || "1"}
							]},
						]);
					}
				}
				if (dbus["ss_basic_double"] != 1){
					$('#ss_basic_pannel').forms([
						{ title: '??????',  name:'ss_basic_mode',type:'select',style:select_style,options:option_mode,value: "" || "1" },
						{ title: '???????????????', name:'ss_basic_server',type:'text',style:input_style,value:dbus.ss_basic_server,help: '?????????????????????????????????????????????????????????IP?????????' },
						{ title: '???????????????', name:'ss_basic_port',type:'text',style:input_style,maxlen:5,value:"" },
						{ title: '??????', name:'ss_basic_password',type:'password',style:input_style,maxlen:64,value:"",help: '???????????????????????????????????????????????????????????????????????????????????????ss??????????????????????????????ss???',peekaboo: 1  },
						{ title: '????????????', name:'ss_basic_method',type:'select',style:select_style,options:option_method,value: dbus.ss_basic_method || "aes-256-cfb" },
						{ title: '??????(AEAD)', name:'ss_basic_ss_obfs',type:'select',style:select_style,options:option_ss_obfs,value: dbus.ss_basic_ss_obfs || "0" },
						{ title: '???????????????', name:'ss_basic_ss_obfs_host',type:'text',style:input_style,value:dbus.ss_basic_ss_obfs_host || "" },
						{ title: '?????? (protocal)', name:'ss_basic_rss_protocal',type:'select',style:select_style,options:option_ssr_protocal,value: dbus.ss_basic_rss_protocal || "auth_sha1_v4" },
						{ title: '???????????? (SSR??????)', name:'ss_basic_rss_protocal_para',type:'text',style:input_style,value:dbus.ss_basic_rss_protocal_para, help: '???????????????SSR?????????????????????????????????????????????????????????????????????SSR?????????????????????????????????????????????????????????' },
						{ title: '???????????? (obfs)', name:'ss_basic_rss_obfs',type:'select',style:select_style,options:option_ssr_obfs,value:dbus.ss_basic_rss_obfs || "tls1.2_ticket_auth" },
						{ title: '???????????? (SSR??????)', name:'ss_basic_rss_obfs_para',type:'text',style:input_style,value: dbus.ss_basic_rss_obfs_para }
					]);
				}else{
					$('#ss_basic_pannel').forms([
						{ title: '??????', multi: [
							{ name:'ss_basic_mode',type:'select',style:select_style,options:option_mode,value: "" || "1", suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_mode_1',type:'select',style:select_style,options:option_mode,value: "" || "1" }
						]},
						{ title: '???????????????', multi: [
							{ name:'ss_basic_server',type:'text',style:input_style,value:dbus.ss_basic_server,help: '?????????????????????????????????????????????????????????IP?????????', suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_server_1',type:'text',style:input_style,value:dbus.ss_basic_server,help: '?????????????????????????????????????????????????????????IP?????????' }
						]},
						{ title: '???????????????', multi: [
							{ name:'ss_basic_port',type:'text',style:input_style,maxlen:5,value:"", suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_port_1',type:'text',style:input_style,maxlen:5,value:dbus.ss_basic_port }
						]},
						{ title: '??????', multi: [
							{ name:'ss_basic_password',type:'password',style:input_style,maxlen:64,value:"",help: '???????????????????????????????????????????????????????????????????????????????????????ss??????????????????????????????ss???',peekaboo: 1, suffix: ' &nbsp;&nbsp;'  },
							{ name:'ss_basic_password_1',type:'password',style:input_style,maxlen:64,value:dbus.ss_basic_password,help: '???????????????????????????????????????????????????????????????????????????????????????ss??????????????????????????????ss???',peekaboo: 1  }
						]},
						{ title: '????????????', multi: [
							{ name:'ss_basic_method',type:'select',style:select_style,options:option_method,value: dbus.ss_basic_method || "aes-256-cfb", suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_method_1',type:'select',style:select_style,options:option_method,value: dbus.ss_basic_method || "aes-256-cfb" }
						]},
						{ title: '??????(AEAD)', multi: [
							{ name:'ss_basic_ss_obfs',type:'select',style:select_style,options:option_ss_obfs,value: dbus.ss_basic_ss_obfs || "0", suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_ss_obfs_1',type:'select',style:select_style,options:option_ss_obfs,value: dbus.ss_basic_ss_obfs || "0" }
						]},
						{ title: '???????????????', multi: [
							{ name:'ss_basic_ss_obfs_host',type:'text',style:input_style,value:dbus.ss_basic_ss_obfs_host || "", suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_ss_obfs_host_1',type:'text',style:input_style,value:dbus.ss_basic_ss_obfs_host || "" }
						]},
						{ title: '?????? (protocal)', multi: [
							{ name:'ss_basic_rss_protocal',type:'select',style:select_style,options:option_ssr_protocal,value: dbus.ss_basic_rss_protocal || "auth_sha1_v4", suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_rss_protocal_1',type:'select',style:select_style,options:option_ssr_protocal,value: dbus.ss_basic_rss_protocal || "auth_sha1_v4" }
						]},
						{ title: '???????????? (SSR??????)', multi: [
							{ name:'ss_basic_rss_protocal_para',type:'text',style:input_style,value:dbus.ss_basic_rss_protocal_para, help: '???????????????SSR?????????????????????????????????????????????????????????????????????SSR?????????????????????????????????????????????????????????', suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_rss_protocal_para_1',type:'text',style:input_style,value:dbus.ss_basic_rss_protocal_para, help: '???????????????SSR?????????????????????????????????????????????????????????????????????SSR?????????????????????????????????????????????????????????' }
						]},
						{ title: '???????????? (obfs)', multi: [
							{ name:'ss_basic_rss_obfs',type:'select',style:select_style,options:option_ssr_obfs,value:dbus.ss_basic_rss_obfs || "tls1.2_ticket_auth", suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_rss_obfs_1',type:'select',style:select_style,options:option_ssr_obfs,value:dbus.ss_basic_rss_obfs || "tls1.2_ticket_auth" }
						]},
						{ title: '???????????? (SSR??????)', multi: [
							{ name:'ss_basic_rss_obfs_para',type:'text',style:input_style,value: dbus.ss_basic_rss_obfs_para, suffix: ' &nbsp;&nbsp;' },
							{ name:'ss_basic_rss_obfs_para_1',type:'text',style:input_style,value: dbus.ss_basic_rss_obfs_para }
						]},
					]);
				}
				var node_kcp=parseInt(dbus["ss_kcp_node"]);
				if (node_kcp && (dbus["ssconf_basic_max_node"] || dbus["ssrconf_basic_max_node"])){
					if (node_kcp <= node_ss + node_ssr){
					var node_html=$("#_ss_basic_node option[value='" + node_kcp +"']")[0].innerHTML;
						if (dbus["ss_kcp_enable"] == 1){
							if (node_html.indexOf("SSR") != -1){
								$("#_ss_basic_node option[value='" + node_kcp + "']").html(node_html.replace(/SSR/g, "KCP+SSR"));
							}else{
								$("#_ss_basic_node option[value='" + node_kcp + "']").html(node_html.replace(/SS/g, "KCP+SS"));
							}
						}
					}
 				}
			</script>
		</div>
	</div>
	<!-- ------------------ ???????????? --------------------- -->
	<div id="tabs" class="btn-group boxr2">
		<a class="btn sub-btn-tab" style="width:102px;height:36px" href="javascript:void(0);" onclick="NodetabSelect('ss');" id="SubTabSS">SS?????? <i class="icon-tools"></i></a>
		<a class="btn sub-btn-tab" style="width:102px;height:36px" href="javascript:void(0);" onclick="NodetabSelect('ssr');" id="SubTabSSR">SSR?????? <i class="icon-tools"></i></a>
		<a class="btn sub-btn-tab" style="width:102px;height:36px" href="javascript:void(0);" onclick="NodetabSelect('manage');" id="SubTabMange">???????????? <i class="icon-tools"></i></a>
	</div>
	<div class="box boxr2" id="ss_node_tab" style="margin-top: 15px;">
		<div class="heading">????????????-SS??????</div>
		<div class="content">
			<div class="tabContent">
				<table class="line-table" cellspacing=1 id="ss_node-grid">
				</table>
			</div>
		</div>
	</div>
	<div class="box boxr2" id="ssr_node_tab" style="margin-top: 15px;">
		<div class="heading">????????????-SSR??????</div>
		<div class="content">
			<div class="tabContent">
				<table class="line-table" cellspacing="1" id="ssr_node-grid">
				</table>
			</div>
		</div>
	</div>
	<div class="box boxr2" id="ssr_ping_tab" style="margin-top: 15px;">
		<div class="heading">ping??????</div>
		<div class="content">
			<div id="ss_ping_panel" class="tabContent">
				<script type="text/javascript">
					$('#ss_ping_panel').forms([
						{ title: '??????ping??????', multi: [
							{ name:'ss_basic_ping_method',type:'select',options:[["1", "ping 1???"], ["2", "10???ping?????? + ?????????"], ["3", "20???ping?????? + ?????????"] ], value: dbus.ss_basic_ping_method || "1", prefix:'ping???????????????', suffix: ' &nbsp;&nbsp;'},
							//{ name:'ss_basic_ping_refresh',type:'select',options:[["1", "???????????????????????????"], ["0", "??????????????????????????????"], ["5", "5???????????????"], ["15", "15???????????????"], ["30", "30???????????????"] ], value: dbus.ss_basic_ping_refresh || "0", prefix:'ping???????????????', suffix: ' &nbsp;&nbsp;'},
							{ suffix: '<button id="ping_botton" onclick="ping_node();" class="btn btn-primary">????????????ping <i class="icon-traffic"></i></button>' }
						]},
					]);
				</script>
			</div>
			<br><hr>
		</div>
	</div>
	<div class="box boxr2" id="ssr_node_subscribe" style="margin-top: 15px;">
		<div class="heading">SSR????????????</div>
		<div class="content">
			<div id="ssr_node_subscribe_pannel" class="section">
				<fieldset>
					<label class="col-sm-3 control-left-label">SSR??????????????????</label>
					<div class="col-sm-9">
						<table class="line-table" cellspacing=1 id="online_link-grid">
						</table>
					</div>
				</fieldset>
			</div>
			<script type="text/javascript">
				var group_del = [];
				group_del[0] = ["0", "????????????????????????"]
				var j = 1;
				for ( var i = 1; i <= 10; i++){
					if(dbus["ss_online_group_" + i]){
						group_del[j] = [dbus["ss_online_group_" + i], dbus["ss_online_group_" + i]];
						j++;
					}
				}
				$('#ssr_node_subscribe_pannel').forms([
					{ title: '????????????????????????',  name:'ssr_subscribe_mode',type:'select',options:option_mode,value:dbus.ssr_subscribe_mode || "2", suffix: '<lable id="_ssr_subscribe_mode_text">?????????????????????????????????????????????</lable>' },
					{ title: '??????????????????????????????', multi: [
						{ name: 'ssr_subscribe_obfspara',type:'select',options:[['0', '??????'], ['1', '??????????????????'], ['2', '?????????']], value: dbus.ssr_subscribe_obfspara || "2", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ssr_subscribe_obfspara_val', type: 'text', value: dbus.ssr_subscribe_obfspara_val || "www.baidu.com", suffix: '<lable id="_ssr_subscribe_obfspara_text">??????????????????????????????????????????????????????????????????????????????</lable>' }
					]},
					{ title: '????????????SS??????', name:'ss_basic_online_links_goss',type:'checkbox',value: dbus.ss_basic_online_links_goss == 1 },  // ==1 means default close; !=0 means default open
					{ title: '????????????????????????', multi: [
						{ name: 'ss_basic_node_update',type: 'select', options:[['0', '??????'], ['1', '??????']], value: dbus.ss_basic_node_update || "1", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_basic_node_update_day', type: 'select', options:option_day_time, value: dbus.ss_basic_node_update_day || "7",suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_basic_node_update_hr', type: 'select', options:option_hour_time, value: dbus.ss_basic_node_update_hr || "4",suffix: ' &nbsp;&nbsp;'}
					]},
					{ title: '??????????????????', multi: [
						{ name: 'ss_basic_online_node_del',type: 'select', options:group_del, value: dbus.ss_basic_online_node_del || "0", suffix: ' &nbsp;&nbsp;' },
						{ suffix: '<button id="_delete_online_node" onclick="delete_online_node(5);" class="btn">?????? <i class="icon-cancel"></i></button>' }
					]}
				]);
			</script>
			<!--<button type="button" value="Save" id="dele-subscribe-node" onclick="delete_online_node()" class="btn" style="float:right;">?????????????????? <i class="icon-cancel"></i></button>-->
			<button type="button" value="Save" id="save-subscribe-node" onclick="manipulate_conf('ss_online_update.sh', 7)" class="btn btn-primary" style="float:right;margin-right:20px;">?????????????????? <i class="icon-check"></i></button>
			<button type="button" value="Save" id="save-subscribe-node" onclick="manipulate_conf('ss_conf.sh', 8)" class="btn btn-primary" style="float:right;margin-right:20px;">?????????????????? <i class="icon-wrench"></i></button>
		</div>
	</div>
	<div class="box boxr2" id="ss_link_add" style="margin-top: 15px;">
		<div class="heading">??????SS/SSR?????????????????????</div>
		<div class="content">
			<div id="ss_link_pannel" class="section">
				<fieldset>
					<label class="col-sm-3 control-left-label">SS/SSR??????</label>
					<div class="col-sm-9">
						<table class="line-table" cellspacing=1 id="ss_link-grid">
						</table>
					</div>
				</fieldset>
			</div>
			<button type="button" value="Save" id="save-add-link" onclick="manipulate_conf('ss_online_update.sh', 'add')" class="btn btn-primary" style="float:right;margin-right:0px;">???????????????????????? <i class="icon-check"></i></button>
		</div>
	</div>
	<button type="button" value="Save" id="save-node" onclick="save_node()" class="btn btn-primary boxr2">???????????? <i class="icon-check"></i></button>
	<!-- ------------------ DNS?????? --------------------- -->
	<div class="box boxr3" id="ss_dns_tab" style="margin-top: 0px;">
		<div class="heading"></div>
		<div class="content" style="margin-top: -20px;">
			<div id="ss_dns_pannel" class="section"></div>
			<script type="text/javascript">
				$('#ss_dns_pannel').forms([
					{ title: 'DNS????????????', name:'ss_dns_plan',type:'select',options:[['1', '????????????'], ['2', '????????????']], value: dbus.ss_dns_plan || "2", suffix: '<lable id="_ss_dns_plan_txt"></lable>'},
					{ title: '????????????DNS', multi: [
						{ name: 'ss_dns_china',type:'select', options:option_dns_china, value: dbus.ss_dns_china || "1", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_dns_china_user', type: 'text', value: dbus.ss_dns_china_user }
					]},
					// dns foreign chinadns
					{ title: '????????????DNS', suffix: '<lable id="_ss_dns_china_chinadns_txt">ChinaDNS??????????????????cdn???????????????????????????DNS </lable>' },
					// dns foreign pcap
					{ title: '????????????DNS', suffix: '<lable id="_ss_dns_china_pcap_txt">Pcap_DNSProxy??????????????????cdn???????????????????????????DNS </lable>'},
					{ title: '????????????DNS', multi: [
						{ name: 'ss_dns_foreign',type: 'select', options:option_dns_foreign, value: dbus.ss_dns_foreign || "1", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_dns2socks_user', type: 'text', value: dbus.ss_dns2socks_user || "8.8.8.8:53" },
						{ name: 'ss_sstunnel',type: 'select', options:option_ss_sstunnel, value: dbus.ss_sstunnel || "2", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_sstunnel_user', type: 'text', value: dbus.ss_sstunnel_user || "" },
						{ name: 'ss_opendns',type: 'select', options:option_opendns, value: dbus.ss_opendns || "cisco", suffix: ' &nbsp;&nbsp;' }
					]},
					//pdnsd
					{ title: '<font color="#1bbf35">&nbsp;&nbsp;&nbsp;&nbsp;*pdnsd????????????</font>', name:'ss_pdnsd_method',type:'select',options:[['1', '???udp??????'], ['2', '???tcp??????']], value: dbus.ss_pdnsd_method || "1" },

					{ title: '<font color="#1bbf35">&nbsp;&nbsp;&nbsp;&nbsp;*pdnsd??????????????????UDP???</font>', multi: [
						{ name: 'ss_pdnsd_udp_server',type:'select',options:[['1', 'dns2socks'], ['2', 'dnscrypt-proxy'], ['3', 'ss-tunnel']], value: dbus.ss_pdnsd_udp_server || "1", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_pdnsd_udp_server_dns2socks', type: 'text', value: dbus.ss_pdnsd_udp_server_dns2socks || "8.8.8.8:53" },
						{ name: 'ss_pdnsd_udp_server_dnscrypt',type: 'select', options:option_opendns, value: dbus.ss_pdnsd_udp_server_dns2socks || "1" },
						{ name: 'ss_pdnsd_udp_server_ss_tunnel',type: 'select', options:option_ss_sstunnel, value: dbus.ss_pdnsd_udp_server_ss_tunnel || "2", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_pdnsd_udp_server_ss_tunnel_user', type: 'text', value: dbus.ss_pdnsd_udp_server_ss_tunnel_user || "9.9.9.9:53" }
					]},

					{ title: '<font color="#1bbf35">&nbsp;&nbsp;&nbsp;&nbsp;*pdnsd??????????????????TCP???</font>', multi: [
						{ name: 'ss_pdnsd_server_ip', type: 'text', value: dbus.ss_pdnsd_server_ip },
						{ suffix: ' ???' },
						{ name: 'ss_pdnsd_server_port', type: 'text', value: dbus.ss_pdnsd_server_port }
					]},
					{ title: '<font color="#1bbf35">&nbsp;&nbsp;&nbsp;&nbsp;*pdnsd????????????</font>', multi: [
						{ name: 'ss_pdnsd_server_cache_min', type: 'text', size: '1', value: dbus.ss_pdnsd_server_cache_min || "24h" },
						{ suffix: ' ??? ' },
						{ name: 'ss_pdnsd_server_cache_max', type: 'text', size: '1', value: dbus.ss_pdnsd_server_cache_max || "1w" }
					]},
					//ChinaDNS
					{ title: '<font color="#1bbf35">&nbsp;&nbsp;&nbsp;&nbsp;*ChinaDNS??????DNS</font>', multi: [
						{ name: 'ss_chinadns_china',type:'select', options:option_ChinaDNS_china, value: dbus.ss_chinadns_china || "1", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_chinadns_china_user', type: 'text', value: dbus.ss_chinadns_china_user }
					]},
					{ title: '<font color="#1bbf35">&nbsp;&nbsp;&nbsp;&nbsp;*ChinaDNS??????DNS</font>', multi: [
						{ name: 'ss_chinadns_foreign_method',type:'select',options:[['1', 'dns2socks'], ['2', 'dnscrypt-proxy'], ['3', 'ss-tunnel'],['4', '?????????']], value: dbus.ss_chinadns_foreign_method || "1", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_chinadns_foreign_dns2socks', type: 'select', options:option_ss_sstunnel, value: dbus.ss_chinadns_foreign_dns2socks || "2"},
						{ name: 'ss_chinadns_foreign_dns2socks_user', type: 'text', value: dbus.ss_chinadns_foreign_dns2socks_user || "8.8.8.8:53", prefix: ' &nbsp;&nbsp;' },
						{ name: 'ss_chinadns_foreign_dnscrypt',type: 'select', options:option_opendns, value: dbus.ss_chinadns_foreign_dnscrypt || "1" },
						{ name: 'ss_chinadns_foreign_sstunnel',type: 'select', options:option_ss_sstunnel, value: dbus.ss_chinadns_foreign_sstunnel || "2"},
						{ name: 'ss_chinadns_foreign_sstunnel_user', type: 'text', value: dbus.ss_chinadns_foreign_sstunnel_user || "8.8.8.8:53", prefix: ' &nbsp;&nbsp;' },
						{ name: 'ss_chinadns_foreign_method_user', type: 'text', value: dbus.ss_chinadns_foreign_method_user, suffix: '<lable id="_ss_chinadns_foreign_method_user_txt">??????????????????chinaDNS??????dns???</lable>' },
					]},
					{ title: 'SS?????????????????????', multi: [
						{ name: 'ss_basic_dnslookup',type:'select',options:[['0', 'resolveip??????'], ['1', 'nslookup??????']], value: dbus.ss_basic_dnslookup || "1", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_basic_dnslookup_server', type: 'text', value: dbus.ss_basic_dnslookup_server || "119.29.29.29", suffix: '<lable id="_ss_basic_dnslookup_txt">????????????????????????????????????????????????????????????</lable>' }
					]},
					{ title: 'chromecast?????? (???????????????DNS??????)',  name:'ss_basic_chromecast',type:'checkbox', value: dbus.ss_basic_chromecast != 0 },
					{ title: '<b>?????????CDN????????????</b></br></br><font color="#B2B2B2">???????????????DNS???????????????????????????????????????</br>koolshare.cn</br>baidu.com</font>', name: 'ss_isp_website_web', type: 'textarea', value: Base64.decode(dbus.ss_isp_website_web)||"",	style: 'width: 100%; height:150px;' },
					// dns foreign chinadns
					{ title: '???????????????CDN????????????', suffix: '<lable id="_ss_cdn_chinadns_txt">ChinaDNS??????????????????cdn?????????????????????cdn???????????? </lable>' },
					// dns foreign pcap
					{ title: '???????????????CDN????????????', suffix: '<lable id="_ss_cdn_pcap_txt">Pcap_DNSProxy??????????????????cdn?????????????????????cdn???????????? </lable>'},
					{ title: '<b>?????????dnsmasq</b></br></br><font color="#B2B2B2">???????????????????????????????????????dnsmasq????????????????????????</br>address=/koolshare.cn/2.2.2.2</br>bogus-nxdomain=220.250.64.18</br>conf-file=/jffs/mydnsmasq.conf</font>', name: 'ss_dnsmasq', type: 'textarea', value: Base64.decode(dbus.ss_dnsmasq)||"", style: 'width: 100%; height:150px;' }
				]);
					$('#_ss_dns_china_chinadns_txt').parent().css("margin-top","9px");
					$('#_ss_cdn_chinadns_txt').parent().css("margin-top","9px");
					$('#_ss_dns_china_pcap_txt').parent().css("margin-top","9px");
					$('#_ss_cdn_pcap_txt').parent().css("margin-top","9px");
			</script>
		</div>
	</div>
	<!-- ------------------ ???WAN?????? --------------------- -->
	<div class="box boxr4" id="ss_mwan_tab" style="margin-top: 0px;">
		<div class="heading"></div>
		<div class="content" style="margin-top: -20px;">
			<div id="ss_mwan_pannel" class="section"></div>
			<script type="text/javascript">
				$('#ss_mwan_pannel').forms([
					{ title: '??????ping????????????', name:'ss_mwan_ping_dst',type:'select',options:[], value: dbus.ss_mwan_ping_dst},
					{ title: '??????DNS??????????????????', name:'ss_mwan_china_dns_dst',type:'select',options:[], value: dbus.ss_mwan_china_dns_dst},
					{ title: 'SS?????????????????????', name:'ss_mwan_vps_ip_dst',type:'select',options:[], value: dbus.ss_mwan_china_dns_dst}
				]);
			</script>
		</div>
	</div>
	<div id="ss_mwan_readme" class="box boxr4" style="margin-top: 0px;">
		<div class="heading">????????????????????? <a class="pull-right" data-toggle="tooltip" title="Hide/Show Notes" href="javascript:toggleVisibility('mwan3');"><span id="sesdivmwan3showhide"><i class="icon-chevron-up"></i></span></a></div>
		<div class="section content" id="sesdivmwan3" style="display:none">
			<li>?????????LEDE???????????????wan?????????????????????????????????????????????ip??????????????????????????????</li>
			<li>?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</li>
			<li>??????????????????????????????SS???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</li>
			<li>????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</li>
		</div>
		<script>
			var cc;
			if(!cookie.get('ss_mwan3_vis')){
				cookie.set('ss_mwan3_vis', 1);
			}
			if (((cc = cookie.get('ss_mwan3_vis')) != null) && (cc == '1')) {
				toggleVisibility("mwan3");
			}
		</script>
	</div>	
	<button type="button" value="Save" id="dele-subscribe-node" onclick="manipulate_conf('ss_conf.sh', 9)" class="btn btn-primary boxr4">?????????????????? <i class="icon-check"></i></button>
	<!-- ------------------ ???????????? --------------------- -->
	<div class="box boxr5" id="ss_lb_tab" style="margin-top: 0px;">
		<div class="heading"></div>
		<div class="content">
			<div id="ss_lb_panel" class="tabContent">
			<script type="text/javascript">
				$('#ss_lb_panel').forms([
					{ title: '??????????????????', name:'ss_lb_enable',type:'checkbox',  value: dbus.ss_lb_enable == 1 },  // ==1 means default close; !=0 means default open
					{ title: 'haproxy?????????', rid:'haproxy_console', text:'<a id="haproxy_console1" href="" target="_blank"></a>'},
					{ title: 'haproxy??????', multi: [
						{ name: 'ss_lb_account',type:'text', size: 4, value: dbus.ss_lb_account || "admin", prefix: '???????????????', suffix: ' &nbsp;&nbsp;' },
						{ name:'ss_lb_password',type:'password',size: 4,value:dbus.ss_lb_password, peekaboo: 1, prefix: '???????????????',  }
					]},
					{ title: 'haproxy??????(??????ss??????)', name:'ss_lb_port',type:'text', maxlen:5, size: 2,value:dbus.ss_lb_port||"8118" },
					{ title: 'Haproxy??????????????????', multi: [
						{ name: 'ss_lb_heartbeat',type:'checkbox', value: dbus.ss_lb_heartbeat == 1, suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_lb_up', type: 'text', size: 1, value: dbus.ss_lb_up || "2", suffix: '<lable>???</lable>&nbsp;&nbsp;&nbsp;&nbsp;', prefix: '<span class="help-block"><lable>?????????</lable></span>' },
						{ name: 'ss_lb_down', type: 'text', size: 1, value: dbus.ss_lb_down || "3", suffix: '<lable>???</lable>&nbsp;&nbsp;&nbsp;&nbsp;', prefix: '<span class="help-block"><lable>?????????</lable></span>' },
						{ name: 'ss_lb_interval', type: 'text', size: 2, value: dbus.ss_lb_interval || "4000", suffix: '<lable>ms</lable>', prefix: '<span class="help-block"><lable>???????????????</lable></span>' }
					]},
					{ title: '???????????????', multi: [
						{ name: 'ss_lb_node',type:'select',style:select_style,options:option_node_name, value: dbus.ss_lb_node || "", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_lb_weight', type: 'text', size: 1, value: dbus.ss_lb_weight || "50", suffix: ' &nbsp;&nbsp;', prefix: '<span class="help-block"><lable>?????????</lable></span>' },
						{ name: 'ss_lb_policy', type: 'select', options:option_lb_policy, value: dbus.ss_lb_policy || "1", suffix: ' &nbsp;&nbsp;',prefix: '<span class="help-block"><lable>?????????</lable></span>' },
						{ name: 'ss_lb_dest', type: 'select', options:[], suffix: ' &nbsp;&nbsp;',prefix: '<span class="help-block"><lable>?????????</lable></span>' },
						{ suffix: ' <button id="add_lbnode" onclick="add_lb_node();" class="btn btn-danger">??????<i class="icon-plus"></i></button>' }
					]}
				]);
				document.getElementById("haproxy_console1").href = "http://"+location.hostname+":1188";
				document.getElementById("haproxy_console1").innerHTML = "<i><u>http://"+location.hostname+":1188</i></u>";
				$("#_ss_lb_node option[value='0']").remove();
				$("#_ss_lb_node").val(1);
			</script>
			</div>
			<br><hr>
		</div>
	</div>
	<div class="box boxr5" id="lb_list" style="margin-top: 0px;">
		<div class="heading">???????????????????????????</div>
		<div class="content">
			<div class="tabContent">
				<table class="line-table" cellspacing=1 id="lb-grid">
				</table>
			</div>
			<br><hr>
		</div>
	</div>
	<div id="ss_lb_tab_readme" class="box boxr5">
		<div class="heading">??????????????????????????? <a class="pull-right" data-toggle="tooltip" title="Hide/Show Notes" href="javascript:toggleVisibility('lb');"><span id="sesdivlbshowhide"><i class="icon-chevron-up"></i></span></a></div>
		<div class="section content" id="sesdivlb" style="display:none">
			<li>??????????????????????????????ss??????ssr????????????????????????????????????????????????????????????????????????</li>
			<li>????????????????????????????????????????????????????????????????????????????????????????????????SS???SSR????????????????????????????????????</li>
			<li>????????????????????????haproxy?????????ss????????????????????????????????????IP???127.0.0.1???????????????????????????????????????????????????</li>
			<li>??????????????????????????????udp????????????????????????????????????????????????ss-tunnel????????????dns??????;</li>
			<li>?????????????????????????????????ss????????????ip???????????????????????????haproxy?????????????????????</li>
		</div>
		<script>
			var cc;
			if(!cookie.get('ss_lb_vis')){
				cookie.set('ss_lb_vis', 1);
			}
			if (((cc = cookie.get('ss_lb_vis')) != null) && (cc == '1')) {
				toggleVisibility("lb");
			}
		</script>
	</div>
	<button type="button" value="Save" id="save-lb" onclick="save_lb()" class="btn btn-primary boxr5">???????????????????????? <i class="icon-check"></i></button>
	<!-- ------------------ KCP?????? --------------------- -->
	<div class="box boxr6" id="ss_kcp_tab_1" style="margin-top: 0px;">
		<div class="heading"></div>
		<div class="content">
			<div id="ss_kcp_panel_1" class="tabContent">
			<script type="text/javascript">
				$('#ss_kcp_panel_1').forms([
					{ title: 'KCP????????????', name:'ss_kcp_enable', type:'checkbox',  value: dbus.ss_kcp_enable == 1 },  // ==1 means default close; !=0 means default open
					{ title: '??????KCP??????', rid:'ss_kcp_version', text:'<font id="_ss_kcp_version" color="#1bbf35">20171201</font>'},
				]);
			</script>
			</div>
		</div>
	</div>
	<div class="box boxr6" id="ss_kcp_tab_2" style="margin-top: 0px;">
		<div class="heading">KCP???????????????</div>
		<div class="content">
			<div id="ss_kcp_panel_2" class="tabContent">
			<script type="text/javascript">
				$('#ss_kcp_panel_2').forms([
					{ title: 'KCP????????????????????????', name: 'ss_kcp_node', type:'select', style:select_style, options:option_node_name, value: dbus.ss_kcp_node || "1" },
					{ title: '???????????????', name:'ss_kcp_port',type:'text',style:input_style, maxlen:5, value:dbus.ss_kcp_port||"1099" },
					{ title: '??????????????? (--key)', name:'ss_kcp_password',type:'password', maxlen:64, style:input_style,value:dbus.ss_kcp_password, peekaboo:1 },
					{ title: '???????????? (--mode)', name:'ss_kcp_mode',type:'select', style:select_style, options:option_kcp_mode,value:dbus.ss_kcp_mode||"fast" },
					{ title: '???????????? (--crypt)', name:'ss_kcp_crypt',type:'select', style:select_style, options:option_kcp_crypt,value:dbus.ss_kcp_crypt||"aes" },
					{ title: 'MTU (--mtu)', name:'ss_kcp_mtu',type:'text',style:input_style, maxlen:4, value:dbus.ss_kcp_mtu||"1350" },
					{ title: '???????????? (--sndwnd)', name:'ss_kcp_sndwnd',type:'text',style:input_style, maxlen:5, value:dbus.ss_kcp_sndwnd||"128" },
					{ title: '???????????? (--rcvwnd)', name:'ss_kcp_rcvwnd',type:'text',style:input_style, maxlen:5, value:dbus.ss_kcp_rcvwnd||"1024" },
					{ title: '????????? (--conn)', name:'ss_kcp_conn',type:'text',style:input_style, maxlen:4, value:dbus.ss_kcp_conn||"1" },
					{ title: '?????????????????? (--nocomp)', name:'ss_kcp_compon',type:'checkbox',style:input_style, maxlen:4, value:dbus.ss_kcp_compon == 1 },
					{ title: '???????????????', name:'ss_kcp_config',type:'text',style:"width:85%", value:dbus.ss_kcp_config }
				]);
				
				E('_ss_kcp_config').placeholder = "?????????????????????manual??????????????????????????????????????????";
				document.getElementById("_ss_kcp_version").innerHTML = dbus["ss_kcp_version"] || "20171113";
				$("#_ss_kcp_node option[value='0']").remove();
			</script>
			</div>
			<br><hr>
		</div>
	</div>
	<div id="ss_kcp_tab_readme" class="box boxr6">
		<div class="heading">KCP????????????????????? <a class="pull-right" data-toggle="tooltip" title="Hide/Show Notes" href="javascript:toggleVisibility('kcp');"><span id="sesdivkcpshowhide"><i class="icon-chevron-up"></i></span></a></div>
		<div class="section content" id="sesdivkcp" style="display:none">
			<li>????????????kcp????????????????????????KCP???????????????kcp?????????ss??????????????????????????????ss???????????????????????????????????????????????????????????????kcp?????????????????????????????????</li>
			<li>kcp?????????????????????kcp???????????????????????????????????????????????????????????????????????????????????????kcp?????????????????????????????????????????????kcp?????????</li>
			<li>??????kcp???????????????tcp???kcp??????????????????ss-tunnel??????DNS??????????????????ss-tunnel????????????kcp????????????????????????udp?????????</li>
			<li>??????kcp????????????????????????????????????kcp??????????????????????????????kcp????????????????????????????????????????????????????????????????????????kcp????????????????????????;</li>
		</div>
		<script>
			var cc;
			if(!cookie.get('ss_kcp_vis')){
				cookie.set('ss_kcp_vis', 1);
			}
			if (((cc = cookie.get('ss_kcp_vis')) != null) && (cc == '1')) {
				toggleVisibility("kcp");
			}
		</script>
	</div>
	<button type="button" value="Save" id="save-kcp" onclick="save_kcp()" class="btn btn-primary boxr6">??????kcp?????? <i class="icon-check"></i></button>
	<!-- ------------------ ????????????--------------------- -->
	<div class="box boxr7" id="ss_wblist_tab" style="margin-top: 0px;">
		<div class="heading"></div>
		<div class="content" style="margin-top: -20px;">
			<div id="ss_wblist_pannel" class="section"></div>
			<script type="text/javascript">
				$('#ss_wblist_pannel').forms([
					{ title: '<b>IP/CIDR?????????</b></br></br><font color="#B2B2B2">??????SS?????????ip/cidr?????????????????????????????????</br>2.2.2.2</br>3.3.0.0/16</font>', name: 'ss_wan_white_ip', type: 'textarea', value: Base64.decode(dbus.ss_wan_white_ip)||"", style: 'width: 100%; height:150px;' },
					{ title: '<b>???????????????</b></br></br><font color="#B2B2B2">??????SS?????????????????????</br>google.com</br>facebook.com</font>', name: 'ss_wan_white_domain', type: 'textarea', value: Base64.decode(dbus.ss_wan_white_domain)||"", style: 'width: 100%; height:150px;' },
					{ title: '<b>IP/CIDR?????????</b></br></br><font color="#B2B2B2">?????????SS?????????ip/cidr?????????????????????????????????</br>4.4.4.4</br>5.0.0.0/8</font>', name: 'ss_wan_black_ip', type: 'textarea', value: Base64.decode(dbus.ss_wan_black_ip)||"", style: 'width: 100%; height:150px;' },
					{ title: '<b>???????????????</b></br></br><font color="#B2B2B2">?????????SS?????????,?????????</br>baidu.com</br>koolshare.cn</font>', name: 'ss_wan_black_domain', type: 'textarea', value: Base64.decode(dbus.ss_wan_black_domain)||"", style: 'width: 100%; height:150px;' }
				]);
			</script>
		</div>
	</div>
	<!-- ------------------ ???????????? --------------------- -->
	<div class="box boxr8" id="ss_acl_tab" style="margin-top: 0px;">
		<div class="heading">??????????????????</div>
		<div class="content">
			<div class="tabContent">
				<table class="line-table" cellspacing=1 id="ss_acl_pannel"></table>
			</div>
			<br><hr>
		</div>
	</div>
	<div class="box boxr8" id="ss_acl_default_tab" style="margin-top: 0px;">
		<div class="heading">??????????????????</div>
		<div class="content">
			<div id="ss_acl_default_pannel" class="section"></div>
			<script type="text/javascript">
				$('#ss_acl_default_pannel').forms([
					{ title: '???????????? (????????????)', name: 'ss_acl_default_mode', type:'select', style:select_style, options:option_acl_mode, value: dbus.ss_acl_default_mode || "1"},
					{ title: '???????????? (????????????)', multi: [
						{ name:'ss_acl_default_port',type:'select',style:select_style, options:option_acl_port, maxlen:5, value:dbus.ss_acl_default_port||"all", suffix: ' &nbsp;&nbsp;' },
						{ name:'ss_acl_default_port_user',type:'text',style:input_style, maxlen:5, value:dbus.ss_acl_default_port_user }
					]},
					{ title: '', name: 'ss_acl_default_readme', suffix: ' ?????????????????????????????????????????????????????????????????????????????????????????????????????????'},
				]);
			</script>
		</div>
	</div>
	<div id="ss_acl_tab_readme" class="box boxr8">
		<div class="heading">??????????????????????????? <a class="pull-right" data-toggle="tooltip" title="Hide/Show Notes" href="javascript:toggleVisibility('acl');"><span id="sesdivaclshowhide"><i class="icon-chevron-up"></i></span></a></div>
		<div class="section content" id="sesdivacl" style="display:none">
			<li><b>1???</b> ?????????????????????????????????????????????SS?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</li>
			<li><b>2???</b> ?????????????????????IP?????????MAC????????????????????????arp????????????????????????LEDE????????????????????????????????????????????????????????????ip???mac????????????????????????</li>
			<li><b>3???</b> ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</li>
			<li><b>4???</b> ?????????????????????ip???mac?????????ip???mac?????????????????????????????????</li>
			<li><b>5???</b> ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????22,80,443,222,333:555???????????????????????????????????????</li>
			<li><b>6???</b> ???????????????????????????????????????ss????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</li>
		</div>
		<script>
			var cc;
			if(!cookie.get('ss_acl_vis')){
				cookie.set('ss_acl_vis', 1);
			}
			if (((cc = cookie.get('ss_acl_vis')) != null) && (cc == '1')) {
				toggleVisibility("acl");
			}
		</script>
	</div>
	<!-- ------------------ ???????????? --------------------- -->
	<div class="box boxr9" id="ss_rule_tab" style="margin-top: 0px;">
		<div class="heading"></div>
		<div class="content" style="margin-top: -20px;">
			<div id="ss_rule_pannel" class="section"></div>
			<script type="text/javascript">
				$('#ss_rule_pannel').forms([
					{ title: 'gfwlist????????????', rid:'gfw_number_1', text:'<a id="gfw_number" href="https://github.com/koolshare/koolshare.github.io/blob/acelan_softcenter_ui/maintain_files/gfwlist.conf" target="_blank"></a>'},
					{ title: '???????????????IP?????????', rid:'chn_number_1', text:'<a id="chn_number" href="https://github.com/koolshare/koolshare.github.io/blob/acelan_softcenter_ui/maintain_files/chnroute.txt" target="_blank"></a>'},
					{ title: '?????????????????????cdn?????????', rid:'cdn_number_1', text:'<a id="cdn_number" href="https://github.com/koolshare/koolshare.github.io/blob/acelan_softcenter_ui/maintain_files/cdn.txt" target="_blank"></a>'},
					{ title: 'Routing.txt???Pcap?????????', rid:'Routing_number_1', text:'<a id="Routing_number" href="https://github.com/koolshare/koolshare.github.io/blob/acelan_softcenter_ui/maintain_files/Routing.txt" target="_blank"></a>'},
					{ title: 'WhiteList.txt???Pcap?????????', rid:'WhiteList_number_1', text:'<a id="WhiteList_number" href="https://github.com/koolshare/koolshare.github.io/blob/acelan_softcenter_ui/maintain_files/WhiteList.txt" target="_blank"></a>'},
					{ title: 'koolss??????????????????', multi: [
						{ name: 'ss_basic_rule_update',type: 'select', options:[['0', '??????'], ['1', '??????']], value: dbus.ss_basic_rule_update || "1", suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_basic_rule_update_day', type: 'select', options:option_day_time, value: dbus.ss_basic_rule_update_day || "7",suffix: ' &nbsp;&nbsp;' },
						{ name: 'ss_basic_rule_update_hr', type: 'select', options:option_hour_time, value: dbus.ss_basic_rule_update_hr || "3",suffix: ' &nbsp;&nbsp;' },
						{ name:'ss_basic_gfwlist_update',type:'checkbox',value: dbus.ss_basic_gfwlist_update != 0, suffix: '<lable id="_ss_basic_gfwlist_update_txt">gfwlist</lable>&nbsp;&nbsp;' },
						{ name:'ss_basic_chnroute_update',type:'checkbox',value: dbus.ss_basic_chnroute_update != 0, suffix: '<lable id="_ss_basic_chnroute_update_txt">chnroute</lable>&nbsp;&nbsp;' },
						{ name:'ss_basic_cdn_update',type:'checkbox',value: dbus.ss_basic_cdn_update != 0, suffix: '<lable id="_ss_basic_cdn_update_txt">cdn_list</lable>&nbsp;&nbsp;' },
						{ name:'ss_basic_pcap_update',type:'checkbox',value: dbus.ss_basic_pcap_update != 0, suffix: '<lable id="_ss_basic_pcap_update_txt">pcap_list</lable>&nbsp;&nbsp;' },
						{ suffix: '<button id="_update_rules_now" onclick="update_rules_now(5);" class="btn btn-success">???????????? <i class="icon-cloud"></i></button>' }
					]}
				]);
				$('#gfw_number').html(dbus.ss_gfw_status || "????????????");
				$('#chn_number').html(dbus.ss_chn_status || "????????????");
				$('#cdn_number').html(dbus.ss_cdn_status || "????????????");
				$('#Routing_number').html(dbus.ss_pcap_routing || "????????????");
				$('#WhiteList_number').html(dbus.ss_pcap_whitelist || "????????????");
			</script>
		</div>
	</div>
	<button type="button" value="Save" id="save-subscribe-node" onclick="manipulate_conf('ss_conf.sh', 10)" class="btn btn-primary boxr9">?????????????????? <i class="icon-check"></i></button>
	<!-- ------------------ ???????????? --------------------- -->
	<div class="box boxr10" id="ss_addon_tab" style="margin-top: 0px;">
		<div class="heading"></div>
		<div class="content" style="margin-top: -20px;">
			<div id="ss_addon_pannel" class="section"></div>
			<script type="text/javascript">
				$('#ss_addon_pannel').forms([
					{ title: '??????????????????', name:'ss_basic_refreshrate',type:'select',options:option_status_inter, value: dbus.ss_basic_refreshrate || "5"},
					{ title: '??????????????????????????????????????????', name:'ss_basic_bypass',type:'select',options:[["1", "chnroute"],["2", "geoip"]], value: dbus.ss_basic_bypass || "5"},
					{ title: 'SS????????????', suffix: '<button onclick="manipulate_conf(\'ss_conf.sh\', 1);" class="btn btn-success">????????????SS??????</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="manipulate_conf(\'ss_conf.sh\', 2);" class="btn btn-success">??????SS????????????</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="manipulate_conf(\'ss_conf.sh\', 3);" class="btn btn-success">????????????????????????</button>' },
					{ title: 'SS????????????', suffix: '<button onclick="manipulate_conf(\'ss_conf.sh\', 4);" class="btn btn-download">????????????SS??????</button>' },
					{ title: 'SS????????????', suffix: '<input type="file" id="file" size="50">&nbsp;&nbsp;<button id="upload1" type="button"  onclick="restore_conf();" class="btn btn-danger">??????????????? <i class="icon-cloud"></i></button>' },
					{ title: 'SS????????????', suffix: '<button onclick="manipulate_conf(\'ss_conf.sh\', 6);" class="btn btn-download">??????SS??????</button>' }
				]);
			</script>
		</div>
	</div>
	<!-- ------------------ ???????????? --------------------- -->
	<div class="box boxr11" id="ss_log_tab" style="margin-top: 0px;">
		<div id="ss_log_pannel" class="content">
			<div class="section content">
				<script type="text/javascript">
					y = Math.floor(docu.getViewSize().height * 0.55);
					s = 'height:' + ((y > 300) ? y : 300) + 'px;display:block';
					$('#ss_log_pannel').append('<textarea class="as-script" name="_ss_basic_log" id="_ss_basic_log" readonly wrap="off" style="max-width:100%; min-width: 100%; margin: 0; ' + s + '" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false"></textarea>');
				</script>
			</div>
		</div>
	</div>
	<!-- ------------------ ?????? --------------------- -->
	<div id="msg_warring" class="alert alert-warning icon" style="display:none;"></div>
	<div id="msg_success" class="alert alert-success icon" style="display:none;"></div>
	<div id="msg_error" class="alert alert-error icon" style="display:none;"></div>
	<button type="button" value="Save" id="save-button" onclick="save()" class="btn btn-primary">?????? <i class="icon-check"></i></button>
	<button type="button" value="Cancel" id="cancel-button" onclick="javascript:reloadPage();" class="btn">?????? <i class="icon-cancel"></i></button>
	<script type="text/javascript">init_ss();</script>
</content>
