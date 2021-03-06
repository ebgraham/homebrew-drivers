cask 'lg-screen-manager' do
  version '2.08'
  sha256 'b4b757d2d79e81c18011965267a12a7d774778b3d850c4f7c0e6482d628ed965'

  url "https://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=20150222793490&what=MANUAL&fromSystem=LG.COM&fileId=uni0URRVZmqPSUpDV7E05g&ORIGINAL_NAME_b1_a1=LGScreenManager_#{version}.zip"
  name 'LG Screen Manager'
  homepage 'http://www.lg.com/us/support-product/lg-27MD5KA-B'

  pkg "LGScreenManager_#{version}.pkg"

  uninstall login_item: 'LG Screen Manager',
            pkgutil:    'com.LGScreenManager*',
            quit:       'com.LGSI.-.LG-Screen-Manager'
end
