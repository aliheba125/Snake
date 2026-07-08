.class public Lcom/snake/helper/InternalWebBrowser;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Landroid/webkit/WebView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/FrameLayout;

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/snake/helper/InternalWebBrowser;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snake/helper/InternalWebBrowser;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/snake/helper/InternalWebBrowser;->c:Z

    iput-boolean v0, p0, Lcom/snake/helper/InternalWebBrowser;->n:Z

    return-void
.end method

.method public static synthetic a(Lcom/snake/helper/InternalWebBrowser;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snake/helper/InternalWebBrowser;->w(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/snake/helper/InternalWebBrowser;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snake/helper/InternalWebBrowser;->u(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/snake/helper/InternalWebBrowser;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snake/helper/InternalWebBrowser;->v(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/snake/helper/InternalWebBrowser;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snake/helper/InternalWebBrowser;->t(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/snake/helper/InternalWebBrowser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snake/helper/InternalWebBrowser;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/snake/helper/InternalWebBrowser;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/snake/helper/InternalWebBrowser;->g:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/snake/helper/InternalWebBrowser;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snake/helper/InternalWebBrowser;->m:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lcom/snake/helper/InternalWebBrowser;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    return-void
.end method

.method public static bridge synthetic j(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snake/helper/InternalWebBrowser;->r(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Lcom/snake/helper/InternalWebBrowser;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snake/helper/InternalWebBrowser;->s()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/snake/helper/InternalWebBrowser;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/snake/helper/InternalWebBrowser;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snake/helper/InternalWebBrowser;->z(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/snake/helper/InternalWebBrowser;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snake/helper/InternalWebBrowser;->A(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snake/helper/InternalWebBrowser;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/snake/helper/InternalWebBrowser;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const v2, 0x1080061

    goto :goto_1

    :cond_2
    const v2, 0x108005c

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/snake/helper/InternalWebBrowser;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const-string v0, "#5F6368"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_3
    const-string v0, "#EA4335"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final o()Landroid/view/View;
    .locals 11

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v6

    invoke-virtual {p0, v4}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v7

    invoke-virtual {p0, v4}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v4

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v5, 0x1080078

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v5, "#5F6368"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v8

    invoke-virtual {p0, v7}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x18

    invoke-virtual {p0, v7}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->j:Landroid/widget/TextView;

    const-string v6, "#202124"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->j:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->j:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v0, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/snake/helper/InternalWebBrowser;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->k:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->k:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v0, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/snake/helper/InternalWebBrowser;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "Reload"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v7}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v5

    invoke-virtual {p0, v3}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v3, "#1A73E8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, Landroidx/appcompat/view/menu/y50;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/y50;-><init>(Lcom/snake/helper/InternalWebBrowser;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/snake/helper/InternalWebBrowser;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v5, "url"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_userId"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/snake/helper/InternalWebBrowser;->a:I

    const-string v6, "_oauth_redirect_prefix"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/snake/helper/InternalWebBrowser;->b:Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_0
    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/snake/helper/InternalWebBrowser;->a:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    const-string v7, "#F5F5F5"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/16 v8, 0x2000

    invoke-virtual {v6, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v7, 0x38

    invoke-virtual {v0, v7}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v7

    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v12

    invoke-virtual {v9, v12, v4, v12, v4}, Landroid/view/View;->setPadding(IIII)V

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v13}, Landroid/view/View;->setElevation(F)V

    const-string v13, "\u2715"

    const/16 v14, 0x14

    invoke-virtual {v0, v14}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v15

    invoke-virtual {v0, v13, v15}, Lcom/snake/helper/InternalWebBrowser;->p(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v13

    new-instance v15, Landroidx/appcompat/view/menu/v50;

    invoke-direct {v15, v0}, Landroidx/appcompat/view/menu/v50;-><init>(Lcom/snake/helper/InternalWebBrowser;)V

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v8

    invoke-virtual {v0, v3}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v1

    invoke-direct {v15, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x11

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v13, "#E8E8E8"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v14}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v8, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v11}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v8

    const/4 v13, 0x6

    invoke-virtual {v0, v13}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v14

    invoke-virtual {v0, v11}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v11

    invoke-virtual {v0, v13}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v15

    invoke-virtual {v1, v8, v14, v11, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/snake/helper/InternalWebBrowser;->f:Landroid/widget/ImageView;

    const v11, 0x1080061

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, v0, Lcom/snake/helper/InternalWebBrowser;->f:Landroid/widget/ImageView;

    const-string v11, "#5F6368"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v10}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v11

    invoke-virtual {v0, v10}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v10

    invoke-direct {v8, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v13}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v10, v0, Lcom/snake/helper/InternalWebBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/snake/helper/InternalWebBrowser;->e:Landroid/widget/TextView;

    const-string v10, "#3C4043"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v0, Lcom/snake/helper/InternalWebBrowser;->e:Landroid/widget/TextView;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v8, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, v0, Lcom/snake/helper/InternalWebBrowser;->e:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v8, v0, Lcom/snake/helper/InternalWebBrowser;->e:Landroid/widget/TextView;

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, v0, Lcom/snake/helper/InternalWebBrowser;->e:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v4, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x24

    invoke-virtual {v0, v10}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v10

    invoke-direct {v8, v4, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v10}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v9, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v1

    const-string v8, "\u21bb"

    invoke-virtual {v0, v8, v1}, Lcom/snake/helper/InternalWebBrowser;->p(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v8, Landroidx/appcompat/view/menu/w50;

    invoke-direct {v8, v0}, Landroidx/appcompat/view/menu/w50;-><init>(Lcom/snake/helper/InternalWebBrowser;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v10

    invoke-virtual {v0, v3}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v1

    const-string v8, "\u2699"

    invoke-virtual {v0, v8, v1}, Lcom/snake/helper/InternalWebBrowser;->p(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v8, Landroidx/appcompat/view/menu/x50;

    invoke-direct {v8, v0}, Landroidx/appcompat/view/menu/x50;-><init>(Lcom/snake/helper/InternalWebBrowser;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v10

    invoke-virtual {v0, v3}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v3

    invoke-direct {v8, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ProgressBar;

    const v3, 0x1010078

    const/4 v7, 0x0

    invoke-direct {v1, v0, v7, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->g:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->g:Landroid/widget/ProgressBar;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v3, "#1A73E8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->g:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lcom/snake/helper/InternalWebBrowser;->q(I)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v1, v12}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "; wv"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/snake/helper/InternalWebBrowser$a;

    invoke-direct {v2, v0}, Lcom/snake/helper/InternalWebBrowser$a;-><init>(Lcom/snake/helper/InternalWebBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/snake/helper/InternalWebBrowser$b;

    invoke-direct {v2, v0}, Lcom/snake/helper/InternalWebBrowser$b;-><init>(Lcom/snake/helper/InternalWebBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->h:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->h:Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/snake/helper/InternalWebBrowser;->o()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->h:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v4, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Lcom/snake/helper/InternalWebBrowser;->A(Ljava/lang/String;)V

    iput-object v5, v0, Lcom/snake/helper/InternalWebBrowser;->m:Ljava/lang/String;

    iput-object v5, v0, Lcom/snake/helper/InternalWebBrowser;->l:Ljava/lang/String;

    iget-object v1, v0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snake/helper/InternalWebBrowser;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.snake.INTERNAL_OAUTH_CANCELLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_userId"

    iget v2, p0, Lcom/snake/helper/InternalWebBrowser;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "#5F6368"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101045c

    invoke-virtual {v1, v2, p2, p1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method public final q(I)I
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/snake/helper/InternalWebBrowser;->b:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/snake/helper/InternalWebBrowser;->c:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.snake.INTERNAL_OAUTH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "_userId"

    iget v1, p0, Lcom/snake/helper/InternalWebBrowser;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_1
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[1] handleUrl \u2192 engine: scheme="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3c

    if-le v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "_snake_external_caller"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v0

    iget v1, p0, Lcom/snake/helper/InternalWebBrowser;->a:I

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/dv0;->C(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public final s()V
    .locals 3

    iget-boolean v0, p0, Lcom/snake/helper/InternalWebBrowser;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snake/helper/InternalWebBrowser;->n:Z

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic t(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snake/helper/InternalWebBrowser;->x()V

    return-void
.end method

.method public final synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final synthetic v(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method public final synthetic w(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/snake/helper/InternalWebBrowser;->s()V

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/snake/helper/InternalWebBrowser;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snake/helper/InternalWebBrowser;->n:Z

    iget-object v0, p0, Lcom/snake/helper/InternalWebBrowser;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Page not available"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_3

    const-string p2, "\n\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object p2, p0, Lcom/snake/helper/InternalWebBrowser;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser;->i:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser;->d:Landroid/webkit/WebView;

    if-eqz p1, :cond_5

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/snake/helper/InternalWebBrowser;->g:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_6

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final z(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0xe

    if-eq p1, v0, :cond_4

    const/4 v0, -0x8

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/16 v0, -0xb

    if-eq p1, v0, :cond_2

    const/16 v0, -0xa

    if-eq p1, v0, :cond_1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_3

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    const-string p1, "Page not available"

    return-object p1

    :cond_0
    const-string p1, "Authentication required"

    return-object p1

    :cond_1
    const-string p1, "Unsupported link"

    return-object p1

    :cond_2
    const-string p1, "Your connection isn\'t private"

    return-object p1

    :cond_3
    const-string p1, "Can\'t reach this page"

    return-object p1

    :cond_4
    const-string p1, "Page not found"

    return-object p1
.end method
