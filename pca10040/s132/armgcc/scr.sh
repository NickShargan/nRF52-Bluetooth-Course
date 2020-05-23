rm -rf _build
make
cp _build/nrf52832_xxaa.hex ~/nrf52_s132_ble_cus.hex
cd ~/

nrfjprog --family nRF52 -e
nrfjprog --family nRF52 --program s132_nrf52_6.0.0_softdevice.hex
nrfjprog --family nRF52 -r
nrfjprog --family nRF52 --program nrf52_s132_ble_cus.hex
nrfjprog --family nRF52 -r
