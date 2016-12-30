// Copyright (c) 2016, milek7. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:js';

void main()
{
	querySelector('#output').text = 'Your Dart app is running.';

	context.callMethod('openwindow', ['second.html',
		allowInterop((Window w)
		{
			w.document.documentElement.querySelector('#output').text
				= 'hello';
		})]);
}
