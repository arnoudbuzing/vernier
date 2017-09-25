Print[DateString[]];
Quiet @ CloudConnect["arnoudb@wolfram.com",password];
barometer = DeviceOpen["Vernier"];
pressure = DeviceRead[barometer];
bin = Databin["ovjo5DbK"];
DatabinAdd[bin, <| "pressure" -> pressure |> ];
Print[DateString[]];
