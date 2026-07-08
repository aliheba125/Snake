package com.snake.helper;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.view.menu.yu0;
import com.snake.helper.InternalWebBrowser;

/* loaded from: classes.dex */
public class InternalWebBrowser extends Activity {
    public WebView d;
    public TextView e;
    public ImageView f;
    public ProgressBar g;
    public FrameLayout h;
    public LinearLayout i;
    public TextView j;
    public TextView k;
    public String l;
    public String m;
    public int a = 0;
    public String b = null;
    public boolean c = false;
    public boolean n = false;

    public class a extends WebViewClient {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            InternalWebBrowser.this.A(str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            InternalWebBrowser.this.m = str;
            InternalWebBrowser.this.s();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            if (webResourceRequest.isForMainFrame()) {
                int statusCode = webResourceResponse.getStatusCode();
                StringBuilder sb = new StringBuilder();
                sb.append("onReceivedHttpError ");
                sb.append(statusCode);
                sb.append(" url=");
                sb.append(webResourceRequest.getUrl());
                InternalWebBrowser.this.y("Page not available", "HTTP " + statusCode + " " + webResourceResponse.getReasonPhrase(), webResourceRequest.getUrl() != null ? webResourceRequest.getUrl().toString() : null);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            sslErrorHandler.cancel();
            StringBuilder sb = new StringBuilder();
            sb.append("onReceivedSslError ");
            sb.append(sslError);
            InternalWebBrowser.this.y("Your connection isn't private", "This site's security certificate isn't trusted.", sslError != null ? sslError.getUrl() : null);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            boolean didCrash = renderProcessGoneDetail.didCrash();
            StringBuilder sb = new StringBuilder();
            sb.append("onRenderProcessGone crashed=");
            sb.append(didCrash);
            if (InternalWebBrowser.this.d != null) {
                ViewGroup viewGroup = (ViewGroup) InternalWebBrowser.this.d.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(InternalWebBrowser.this.d);
                }
                InternalWebBrowser.this.d.destroy();
                InternalWebBrowser.this.d = null;
            }
            InternalWebBrowser internalWebBrowser = InternalWebBrowser.this;
            internalWebBrowser.y("Page crashed", "The page ran out of memory or the renderer stopped.", internalWebBrowser.m);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return InternalWebBrowser.this.r(webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (webResourceRequest.isForMainFrame()) {
                String valueOf = String.valueOf(webResourceError.getDescription());
                int errorCode = webResourceError.getErrorCode();
                StringBuilder sb = new StringBuilder();
                sb.append("onReceivedError code=");
                sb.append(errorCode);
                sb.append(" desc=");
                sb.append(valueOf);
                sb.append(" url=");
                sb.append(webResourceRequest.getUrl());
                InternalWebBrowser internalWebBrowser = InternalWebBrowser.this;
                internalWebBrowser.y(internalWebBrowser.z(errorCode), valueOf, webResourceRequest.getUrl() != null ? webResourceRequest.getUrl().toString() : null);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return InternalWebBrowser.this.r(str);
        }
    }

    public class b extends WebChromeClient {
        public b() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (InternalWebBrowser.this.g != null) {
                InternalWebBrowser.this.g.setProgress(i);
                InternalWebBrowser.this.g.setVisibility(i < 100 ? 0 : 8);
            }
        }
    }

    public final void A(String str) {
        if (str == null || this.e == null) {
            return;
        }
        try {
            Uri parse = Uri.parse(str);
            String uri = parse.toString();
            TextView textView = this.e;
            if (uri == null) {
                uri = str;
            }
            textView.setText(uri);
            boolean equals = "https".equals(parse.getScheme());
            this.f.setImageResource(equals ? R.drawable.ic_secure : R.drawable.ic_partial_secure);
            this.f.setColorFilter(equals ? Color.parseColor("#5F6368") : Color.parseColor("#EA4335"));
        } catch (Exception unused) {
            this.e.setText(str);
        }
    }

    public final View o() {
        LinearLayout linearLayout = new LinearLayout(this);
        this.i = linearLayout;
        linearLayout.setOrientation(1);
        this.i.setGravity(17);
        this.i.setBackgroundColor(-1);
        this.i.setPadding(q(32), q(32), q(32), q(32));
        this.i.setVisibility(8);
        this.i.setClickable(true);
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.stat_notify_error);
        imageView.setColorFilter(Color.parseColor("#5F6368"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(q(64), q(64));
        layoutParams.bottomMargin = q(24);
        this.i.addView(imageView, layoutParams);
        TextView textView = new TextView(this);
        this.j = textView;
        textView.setTextColor(Color.parseColor("#202124"));
        this.j.setTextSize(2, 20.0f);
        TextView textView2 = this.j;
        Typeface typeface = Typeface.DEFAULT_BOLD;
        textView2.setTypeface(typeface);
        this.j.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.bottomMargin = q(8);
        this.i.addView(this.j, layoutParams2);
        TextView textView3 = new TextView(this);
        this.k = textView3;
        textView3.setTextColor(Color.parseColor("#5F6368"));
        this.k.setTextSize(2, 14.0f);
        this.k.setGravity(17);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.bottomMargin = q(24);
        this.i.addView(this.k, layoutParams3);
        TextView textView4 = new TextView(this);
        textView4.setText("Reload");
        textView4.setTextColor(-1);
        textView4.setTextSize(2, 14.0f);
        textView4.setTypeface(typeface);
        textView4.setGravity(17);
        textView4.setPadding(q(24), q(10), q(24), q(10));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#1A73E8"));
        gradientDrawable.setCornerRadius(q(20));
        textView4.setBackground(gradientDrawable);
        textView4.setClickable(true);
        textView4.setFocusable(true);
        textView4.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.view.menu.y50
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InternalWebBrowser.this.t(view);
            }
        });
        this.i.addView(textView4, new LinearLayout.LayoutParams(-2, -2));
        return this.i;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.n) {
            finish();
            return;
        }
        WebView webView = this.d;
        if (webView == null || !webView.canGoBack()) {
            finish();
        } else {
            this.d.goBack();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        requestWindowFeature(1);
        super.onCreate(bundle);
        if (getActionBar() != null) {
            getActionBar().hide();
        }
        Intent intent = getIntent();
        if (intent != null) {
            str = intent.getStringExtra("url");
            this.a = intent.getIntExtra("_userId", 0);
            this.b = intent.getStringExtra("_oauth_redirect_prefix");
            if (str == null && intent.getData() != null) {
                str = intent.getData().toString();
            }
        } else {
            str = null;
        }
        if (str == null) {
            finish();
            return;
        }
        try {
            WebView.setDataDirectorySuffix("user_" + this.a);
        } catch (Exception unused) {
        }
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        Window window = getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(Color.parseColor("#F5F5F5"));
        window.getDecorView().setSystemUiVisibility(8192);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-1);
        linearLayout.setFitsSystemWindows(true);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setBackgroundColor(Color.parseColor("#F5F5F5"));
        int q = q(56);
        int q2 = q(12);
        linearLayout2.setPadding(q2, 0, q2, 0);
        linearLayout2.setElevation(q(2));
        View p = p("✕", q(20));
        p.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.view.menu.v50
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InternalWebBrowser.this.u(view);
            }
        });
        linearLayout2.addView(p, new LinearLayout.LayoutParams(q(40), q(40)));
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#E8E8E8"));
        gradientDrawable.setCornerRadius(q(20));
        linearLayout3.setBackground(gradientDrawable);
        linearLayout3.setPadding(q(12), q(6), q(12), q(6));
        ImageView imageView = new ImageView(this);
        this.f = imageView;
        imageView.setImageResource(R.drawable.ic_secure);
        this.f.setColorFilter(Color.parseColor("#5F6368"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(q(16), q(16));
        layoutParams.setMarginEnd(q(6));
        linearLayout3.addView(this.f, layoutParams);
        TextView textView = new TextView(this);
        this.e = textView;
        textView.setTextColor(Color.parseColor("#3C4043"));
        this.e.setTextSize(2, 14.0f);
        this.e.setSingleLine(true);
        this.e.setTypeface(Typeface.DEFAULT);
        linearLayout3.addView(this.e, new LinearLayout.LayoutParams(0, -2, 1.0f));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, q(36), 1.0f);
        layoutParams2.setMarginStart(q(8));
        layoutParams2.setMarginEnd(q(8));
        linearLayout2.addView(linearLayout3, layoutParams2);
        View p2 = p("↻", q(28));
        p2.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.view.menu.w50
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InternalWebBrowser.this.v(view);
            }
        });
        linearLayout2.addView(p2, new LinearLayout.LayoutParams(q(40), q(40)));
        View p3 = p("⚙", q(22));
        p3.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.view.menu.x50
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InternalWebBrowser.this.w(view);
            }
        });
        linearLayout2.addView(p3, new LinearLayout.LayoutParams(q(40), q(40)));
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, q));
        ProgressBar progressBar = new ProgressBar(this, null, R.attr.progressBarStyleHorizontal);
        this.g = progressBar;
        progressBar.setIndeterminate(false);
        this.g.setMax(100);
        this.g.setScaleY(0.5f);
        this.g.getProgressDrawable().setColorFilter(Color.parseColor("#1A73E8"), PorterDuff.Mode.SRC_IN);
        linearLayout.addView(this.g, new LinearLayout.LayoutParams(-1, q(3)));
        WebView webView = new WebView(this);
        this.d = webView;
        cookieManager.setAcceptThirdPartyCookies(webView, true);
        WebSettings settings = this.d.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setMixedContentMode(2);
        settings.setUserAgentString(settings.getUserAgentString().replace("; wv", ""));
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSafeBrowsingEnabled(false);
        this.d.setWebViewClient(new a());
        this.d.setWebChromeClient(new b());
        FrameLayout frameLayout = new FrameLayout(this);
        this.h = frameLayout;
        frameLayout.addView(this.d, new FrameLayout.LayoutParams(-1, -1));
        this.h.addView(o(), new FrameLayout.LayoutParams(-1, -1));
        linearLayout.addView(this.h, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        setContentView(linearLayout);
        A(str);
        this.m = str;
        this.l = str;
        this.d.loadUrl(str);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (this.b != null && !this.c) {
            sendBroadcast(new Intent("com.snake.INTERNAL_OAUTH_CANCELLED").setPackage(yu0.o()).putExtra("_userId", this.a));
        }
        WebView webView = this.d;
        if (webView != null) {
            try {
                webView.stopLoading();
                this.d.setWebChromeClient(null);
                this.d.setWebViewClient(new WebViewClient());
                ViewGroup viewGroup = (ViewGroup) this.d.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.d);
                }
                this.d.removeAllViews();
                this.d.destroy();
            } catch (Exception unused) {
            }
            this.d = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        WebView webView = this.d;
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        WebView webView = this.d;
        if (webView != null) {
            webView.onResume();
        }
    }

    public final TextView p(String str, int i) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(0, i);
        textView.setTextColor(Color.parseColor("#5F6368"));
        textView.setGravity(17);
        textView.setClickable(true);
        textView.setFocusable(true);
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(R.attr.selectableItemBackgroundBorderless, typedValue, true);
        textView.setBackgroundResource(typedValue.resourceId);
        return textView;
    }

    public final int q(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public final boolean r(String str) {
        Object data;
        if (str == null) {
            return false;
        }
        String str2 = this.b;
        if (str2 != null && str.startsWith(str2)) {
            this.c = true;
            sendBroadcast(new Intent("com.snake.INTERNAL_OAUTH_RESULT").setPackage(yu0.o()).putExtra("url", str).putExtra("_userId", this.a));
            finish();
            return true;
        }
        if (str.startsWith("http://") || str.startsWith("https://")) {
            return false;
        }
        try {
            Intent parseUri = Intent.parseUri(str, 1);
            parseUri.addCategory("android.intent.category.BROWSABLE");
            parseUri.setComponent(null);
            parseUri.setSelector(null);
            StringBuilder sb = new StringBuilder();
            sb.append("[1] handleUrl → engine: scheme=");
            sb.append(parseUri.getData().getScheme());
            sb.append(" data=");
            if (parseUri.getData().toString().length() > 60) {
                data = parseUri.getData().toString().substring(0, 60) + "...";
            } else {
                data = parseUri.getData();
            }
            sb.append(data);
            parseUri.putExtra("_snake_external_caller", true);
            yu0.j().C(parseUri, this.a);
        } catch (Exception unused) {
        }
        return true;
    }

    public final void s() {
        LinearLayout linearLayout;
        if (!this.n || (linearLayout = this.i) == null) {
            return;
        }
        this.n = false;
        linearLayout.setVisibility(8);
        WebView webView = this.d;
        if (webView != null) {
            webView.setVisibility(0);
        }
    }

    public final /* synthetic */ void t(View view) {
        x();
    }

    public final /* synthetic */ void u(View view) {
        finish();
    }

    public final /* synthetic */ void v(View view) {
        WebView webView = this.d;
        if (webView != null) {
            webView.reload();
        }
    }

    public final /* synthetic */ void w(View view) {
        WebView webView = this.d;
        if (webView != null) {
            webView.loadUrl(this.l);
        }
    }

    public final void x() {
        if (this.m == null) {
            return;
        }
        if (this.d == null) {
            recreate();
        } else {
            s();
            this.d.loadUrl(this.m);
        }
    }

    public final void y(String str, String str2, String str3) {
        if (this.i == null) {
            return;
        }
        this.n = true;
        TextView textView = this.j;
        if (str == null) {
            str = "Page not available";
        }
        textView.setText(str);
        StringBuilder sb = new StringBuilder();
        if (str2 != null) {
            sb.append(str2);
        }
        if (str3 != null) {
            if (sb.length() > 0) {
                sb.append("\n\n");
            }
            sb.append(str3);
        }
        this.k.setText(sb.toString());
        this.i.setVisibility(0);
        WebView webView = this.d;
        if (webView != null) {
            webView.setVisibility(4);
        }
        ProgressBar progressBar = this.g;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }

    public final String z(int i) {
        return i != -14 ? (i == -8 || i == -2) ? "Can't reach this page" : i != -11 ? i != -10 ? i != -6 ? (i == -5 || i == -4) ? "Authentication required" : "Page not available" : "Can't reach this page" : "Unsupported link" : "Your connection isn't private" : "Page not found";
    }
}
