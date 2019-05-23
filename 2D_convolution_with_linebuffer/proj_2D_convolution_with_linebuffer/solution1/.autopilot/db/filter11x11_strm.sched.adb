<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>filter11x11_strm</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>width</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>width</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>height</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>height</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>src_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>src.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>dst_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>dst.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>19</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>height_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>height</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>67</item>
					<item>68</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>width_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>width</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>69</item>
					<item>70</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name>vconv_xlim_loc_c65</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>72</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>height_c64</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>2</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>73</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name>vconv_xlim_loc_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>74</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>21</id>
						<name>height_c63</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>75</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>22</id>
						<name>width_c62</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>76</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>23</id>
						<name>height_c61</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>77</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>24</id>
						<name>height_c</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>78</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>25</id>
						<name>width_c60</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>79</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>26</id>
						<name>width_c</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>80</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>32</id>
						<name>hconv_V</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>150</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>150</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>hconv.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>81</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>35</id>
						<name>vconv_V</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>155</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>155</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>vconv.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>82</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>13</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>49</id>
						<name>_ln263</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>263</lineNumber>
						<contextFuncName>filter11x11_strm</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>263</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>84</item>
					<item>85</item>
					<item>86</item>
					<item>87</item>
					<item>88</item>
					<item>89</item>
					<item>90</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>2.91</m_delay>
				<m_topoIndex>14</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>56</id>
						<name>_ln143</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>92</item>
					<item>93</item>
					<item>94</item>
					<item>95</item>
					<item>96</item>
					<item>97</item>
					<item>495</item>
					<item>497</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>15</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>57</id>
						<name>_ln143</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>99</item>
					<item>100</item>
					<item>101</item>
					<item>102</item>
					<item>103</item>
					<item>496</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>16</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>62</id>
						<name>_ln143</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>21</count>
					<item_version>0</item_version>
					<item>105</item>
					<item>106</item>
					<item>107</item>
					<item>108</item>
					<item>109</item>
					<item>110</item>
					<item>111</item>
					<item>119</item>
					<item>120</item>
					<item>121</item>
					<item>122</item>
					<item>123</item>
					<item>124</item>
					<item>125</item>
					<item>126</item>
					<item>127</item>
					<item>128</item>
					<item>129</item>
					<item>493</item>
					<item>494</item>
					<item>498</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>17</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>63</id>
						<name>_ln143</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>convolution_strm&amp;lt;unsigned int, 11&amp;gt;</second>
										</first>
										<second>143</second>
									</item>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>270</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>113</item>
					<item>114</item>
					<item>115</item>
					<item>116</item>
					<item>117</item>
					<item>118</item>
					<item>492</item>
					<item>499</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>18</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>64</id>
						<name>_ln273</name>
						<fileName>convolution.cpp</fileName>
						<fileDirectory>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</fileDirectory>
						<lineNumber>273</lineNumber>
						<contextFuncName>filter11x11_strm</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>convolution.cpp</first>
											<second>filter11x11_strm</second>
										</first>
										<second>273</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>19</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_24">
				<Value>
					<Obj>
						<type>2</type>
						<id>71</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_25">
				<Value>
					<Obj>
						<type>2</type>
						<id>83</id>
						<name>filter11x11_strm_ent</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>7</const_type>
				<content>&lt;constant:filter11x11_strm.ent&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_26">
				<Value>
					<Obj>
						<type>2</type>
						<id>91</id>
						<name>Block_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>7</const_type>
				<content>&lt;constant:Block__proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_27">
				<Value>
					<Obj>
						<type>2</type>
						<id>98</id>
						<name>Loop_HConvH_proc6</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>7</const_type>
				<content>&lt;constant:Loop_HConvH_proc6&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_28">
				<Value>
					<Obj>
						<type>2</type>
						<id>104</id>
						<name>Loop_VConvH_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>7</const_type>
				<content>&lt;constant:Loop_VConvH_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_29">
				<Value>
					<Obj>
						<type>2</type>
						<id>112</id>
						<name>Loop_Border_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>7</const_type>
				<content>&lt;constant:Loop_Border_proc&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_30">
				<Obj>
					<type>3</type>
					<id>65</id>
					<name>filter11x11_strm</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>19</count>
					<item_version>0</item_version>
					<item>16</item>
					<item>17</item>
					<item>18</item>
					<item>19</item>
					<item>20</item>
					<item>21</item>
					<item>22</item>
					<item>23</item>
					<item>24</item>
					<item>25</item>
					<item>26</item>
					<item>32</item>
					<item>35</item>
					<item>49</item>
					<item>56</item>
					<item>57</item>
					<item>62</item>
					<item>63</item>
					<item>64</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>63</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_31">
				<id>68</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>70</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>72</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>18</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>74</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>21</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>22</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>23</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>79</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>25</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>26</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>32</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>35</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>83</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>85</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>90</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>92</id>
				<edge_type>1</edge_type>
				<source_obj>91</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>94</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>96</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>97</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>98</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>100</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>102</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>103</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>104</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>106</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>108</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>113</id>
				<edge_type>1</edge_type>
				<source_obj>112</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>114</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>116</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>118</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>120</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>121</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>122</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>126</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>127</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>128</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>129</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>492</id>
				<edge_type>4</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>493</id>
				<edge_type>4</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>494</id>
				<edge_type>4</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>495</id>
				<edge_type>4</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>496</id>
				<edge_type>4</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>497</id>
				<edge_type>4</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>498</id>
				<edge_type>4</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>499</id>
				<edge_type>4</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_94">
			<mId>1</mId>
			<mTag>filter11x11_strm</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>65</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>15</mMinLatency>
			<mMaxLatency>162727239</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_95">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>5</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_96">
						<type>0</type>
						<name>filter11x11_strm_ent_U0</name>
						<ssdmobj_id>49</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>6</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_97">
								<port class_id="29" tracking_level="1" version="0" object_id="_98">
									<name>width</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_99">
									<type>0</type>
									<name>filter11x11_strm_ent_U0</name>
									<ssdmobj_id>49</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_100">
								<port class_id_reference="29" object_id="_101">
									<name>height</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_99"></inst>
							</item>
							<item class_id_reference="28" object_id="_102">
								<port class_id_reference="29" object_id="_103">
									<name>width_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_99"></inst>
							</item>
							<item class_id_reference="28" object_id="_104">
								<port class_id_reference="29" object_id="_105">
									<name>width_out1</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_99"></inst>
							</item>
							<item class_id_reference="28" object_id="_106">
								<port class_id_reference="29" object_id="_107">
									<name>height_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_99"></inst>
							</item>
							<item class_id_reference="28" object_id="_108">
								<port class_id_reference="29" object_id="_109">
									<name>height_out2</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_99"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_110">
						<type>0</type>
						<name>Block_proc_U0</name>
						<ssdmobj_id>56</ssdmobj_id>
						<pins>
							<count>5</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_111">
								<port class_id_reference="29" object_id="_112">
									<name>width</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_113">
									<type>0</type>
									<name>Block_proc_U0</name>
									<ssdmobj_id>56</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_114">
								<port class_id_reference="29" object_id="_115">
									<name>height</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_113"></inst>
							</item>
							<item class_id_reference="28" object_id="_116">
								<port class_id_reference="29" object_id="_117">
									<name>width_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_113"></inst>
							</item>
							<item class_id_reference="28" object_id="_118">
								<port class_id_reference="29" object_id="_119">
									<name>height_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_113"></inst>
							</item>
							<item class_id_reference="28" object_id="_120">
								<port class_id_reference="29" object_id="_121">
									<name>vconv_xlim_out_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_113"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_122">
						<type>0</type>
						<name>Loop_HConvH_proc6_U0</name>
						<ssdmobj_id>57</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_123">
								<port class_id_reference="29" object_id="_124">
									<name>height</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_125">
									<type>0</type>
									<name>Loop_HConvH_proc6_U0</name>
									<ssdmobj_id>57</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_126">
								<port class_id_reference="29" object_id="_127">
									<name>width</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_125"></inst>
							</item>
							<item class_id_reference="28" object_id="_128">
								<port class_id_reference="29" object_id="_129">
									<name>src_V</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_125"></inst>
							</item>
							<item class_id_reference="28" object_id="_130">
								<port class_id_reference="29" object_id="_131">
									<name>hconv_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_125"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_132">
						<type>0</type>
						<name>Loop_VConvH_proc_U0</name>
						<ssdmobj_id>62</ssdmobj_id>
						<pins>
							<count>17</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_133">
								<port class_id_reference="29" object_id="_134">
									<name>height</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_135">
									<type>0</type>
									<name>Loop_VConvH_proc_U0</name>
									<ssdmobj_id>62</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_136">
								<port class_id_reference="29" object_id="_137">
									<name>vconv_xlim_loc</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_138">
								<port class_id_reference="29" object_id="_139">
									<name>hconv_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_140">
								<port class_id_reference="29" object_id="_141">
									<name>vconv_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_142">
								<port class_id_reference="29" object_id="_143">
									<name>height_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_144">
								<port class_id_reference="29" object_id="_145">
									<name>vconv_xlim_loc_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_146">
								<port class_id_reference="29" object_id="_147">
									<name>linebuf_0</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_148">
								<port class_id_reference="29" object_id="_149">
									<name>linebuf_1</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_150">
								<port class_id_reference="29" object_id="_151">
									<name>linebuf_2</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_152">
								<port class_id_reference="29" object_id="_153">
									<name>linebuf_3</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_154">
								<port class_id_reference="29" object_id="_155">
									<name>linebuf_4</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_156">
								<port class_id_reference="29" object_id="_157">
									<name>linebuf_5</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_158">
								<port class_id_reference="29" object_id="_159">
									<name>linebuf_6</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_160">
								<port class_id_reference="29" object_id="_161">
									<name>linebuf_7</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_162">
								<port class_id_reference="29" object_id="_163">
									<name>linebuf_8</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_164">
								<port class_id_reference="29" object_id="_165">
									<name>linebuf_9</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_166">
								<port class_id_reference="29" object_id="_167">
									<name>filt11_coeff</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_168">
						<type>0</type>
						<name>Loop_Border_proc_U0</name>
						<ssdmobj_id>63</ssdmobj_id>
						<pins>
							<count>5</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_169">
								<port class_id_reference="29" object_id="_170">
									<name>width</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_171">
									<type>0</type>
									<name>Loop_Border_proc_U0</name>
									<ssdmobj_id>63</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_172">
								<port class_id_reference="29" object_id="_173">
									<name>height</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_171"></inst>
							</item>
							<item class_id_reference="28" object_id="_174">
								<port class_id_reference="29" object_id="_175">
									<name>dst_V</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_171"></inst>
							</item>
							<item class_id_reference="28" object_id="_176">
								<port class_id_reference="29" object_id="_177">
									<name>vconv_xlim_loc</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_171"></inst>
							</item>
							<item class_id_reference="28" object_id="_178">
								<port class_id_reference="29" object_id="_179">
									<name>vconv_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_171"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>11</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_180">
						<type>1</type>
						<name>width_c</name>
						<ssdmobj_id>26</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_181">
							<port class_id_reference="29" object_id="_182">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_99"></inst>
						</source>
						<sink class_id_reference="28" object_id="_183">
							<port class_id_reference="29" object_id="_184">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_113"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_185">
						<type>1</type>
						<name>width_c60</name>
						<ssdmobj_id>25</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_186">
							<port class_id_reference="29" object_id="_187">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_99"></inst>
						</source>
						<sink class_id_reference="28" object_id="_188">
							<port class_id_reference="29" object_id="_189">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_125"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_190">
						<type>1</type>
						<name>height_c</name>
						<ssdmobj_id>24</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_191">
							<port class_id_reference="29" object_id="_192">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_99"></inst>
						</source>
						<sink class_id_reference="28" object_id="_193">
							<port class_id_reference="29" object_id="_194">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_113"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_195">
						<type>1</type>
						<name>height_c61</name>
						<ssdmobj_id>23</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_196">
							<port class_id_reference="29" object_id="_197">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_99"></inst>
						</source>
						<sink class_id_reference="28" object_id="_198">
							<port class_id_reference="29" object_id="_199">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_125"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_200">
						<type>1</type>
						<name>width_c62</name>
						<ssdmobj_id>22</ssdmobj_id>
						<ctype>0</ctype>
						<depth>3</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_201">
							<port class_id_reference="29" object_id="_202">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_113"></inst>
						</source>
						<sink class_id_reference="28" object_id="_203">
							<port class_id_reference="29" object_id="_204">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_171"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_205">
						<type>1</type>
						<name>height_c63</name>
						<ssdmobj_id>21</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_206">
							<port class_id_reference="29" object_id="_207">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_113"></inst>
						</source>
						<sink class_id_reference="28" object_id="_208">
							<port class_id_reference="29" object_id="_209">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_210">
						<type>1</type>
						<name>vconv_xlim_loc_c</name>
						<ssdmobj_id>20</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_211">
							<port class_id_reference="29" object_id="_212">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_113"></inst>
						</source>
						<sink class_id_reference="28" object_id="_213">
							<port class_id_reference="29" object_id="_214">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_215">
						<type>1</type>
						<name>hconv_V</name>
						<ssdmobj_id>32</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_216">
							<port class_id_reference="29" object_id="_217">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_125"></inst>
						</source>
						<sink class_id_reference="28" object_id="_218">
							<port class_id_reference="29" object_id="_219">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_220">
						<type>1</type>
						<name>vconv_V</name>
						<ssdmobj_id>35</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_221">
							<port class_id_reference="29" object_id="_222">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</source>
						<sink class_id_reference="28" object_id="_223">
							<port class_id_reference="29" object_id="_224">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_171"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_225">
						<type>1</type>
						<name>height_c64</name>
						<ssdmobj_id>19</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_226">
							<port class_id_reference="29" object_id="_227">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</source>
						<sink class_id_reference="28" object_id="_228">
							<port class_id_reference="29" object_id="_229">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_171"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_230">
						<type>1</type>
						<name>vconv_xlim_loc_c65</name>
						<ssdmobj_id>18</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_231">
							<port class_id_reference="29" object_id="_232">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</source>
						<sink class_id_reference="28" object_id="_233">
							<port class_id_reference="29" object_id="_234">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_171"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>19</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>16</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>18</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>20</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>21</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>22</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>23</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>24</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>25</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>26</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>32</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>35</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>49</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>56</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>57</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>62</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>63</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>64</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>65</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>7</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_235">
			<region_name>filter11x11_strm</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>65</item>
			</basic_blocks>
			<nodes>
				<count>49</count>
				<item_version>0</item_version>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
				<item>63</item>
				<item>64</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

