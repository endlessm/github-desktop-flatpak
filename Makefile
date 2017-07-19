all:
	npm install
	npm run build:prod

install:
	mkdir -p /app/lib/desktop
	cp -a dist/GitHub\ Desktop-linux-x64/* /app/lib/desktop
	ln -sf /app/lib/desktop/GitHub\ Desktop /app/bin/GitHub\ Desktop
	install -D com.github.Desktop.desktop \
		/app/share/applications/com.github.Desktop.desktop
	install -D com.github.Desktop.png \
		/app/share/icons/hicolor/64x64/apps/com.github.Desktop.png
	install -D com.github.Desktop.appdata.xml \
		/app/share/appdata/com.github.Desktop.appdata.xml
	# Not sure why this is needed:
	chmod a+x /app/lib/desktop/resources/app/static/ask-pass-trampoline.sh

.PHONY: all install
