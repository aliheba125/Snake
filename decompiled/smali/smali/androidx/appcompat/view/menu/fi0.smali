.class public Landroidx/appcompat/view/menu/fi0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/fi0$j;,
        Landroidx/appcompat/view/menu/fi0$k;,
        Landroidx/appcompat/view/menu/fi0$c;,
        Landroidx/appcompat/view/menu/fi0$h;,
        Landroidx/appcompat/view/menu/fi0$f;,
        Landroidx/appcompat/view/menu/fi0$l;,
        Landroidx/appcompat/view/menu/fi0$d;,
        Landroidx/appcompat/view/menu/fi0$e;,
        Landroidx/appcompat/view/menu/fi0$g;,
        Landroidx/appcompat/view/menu/fi0$i;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/kd0;

.field public b:Landroidx/appcompat/view/menu/fi0$h;

.field public final c:Landroidx/appcompat/view/menu/kd0$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/si;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/fi0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/fi0$a;-><init>(Landroidx/appcompat/view/menu/fi0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/fi0;->c:Landroidx/appcompat/view/menu/kd0$c;

    new-instance v1, Landroidx/appcompat/view/menu/kd0;

    const-string v2, "flutter/platform"

    sget-object v3, Landroidx/appcompat/view/menu/n60;->a:Landroidx/appcompat/view/menu/n60;

    invoke-direct {v1, p1, v2, v3}, Landroidx/appcompat/view/menu/kd0;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/ld0;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/fi0;->a:Landroidx/appcompat/view/menu/kd0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/kd0;->e(Landroidx/appcompat/view/menu/kd0$c;)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/fi0;)Landroidx/appcompat/view/menu/fi0$h;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/fi0;->b:Landroidx/appcompat/view/menu/fi0$h;

    return-object p0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/fi0;Lorg/json/JSONArray;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/fi0;->h(Lorg/json/JSONArray;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/fi0;Lorg/json/JSONObject;)Landroidx/appcompat/view/menu/fi0$c;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/fi0;->g(Lorg/json/JSONObject;)Landroidx/appcompat/view/menu/fi0$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/fi0;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/fi0;->k(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/fi0;Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$k;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/fi0;->j(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/fi0;Lorg/json/JSONObject;)Landroidx/appcompat/view/menu/fi0$j;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/fi0;->i(Lorg/json/JSONObject;)Landroidx/appcompat/view/menu/fi0$j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final g(Lorg/json/JSONObject;)Landroidx/appcompat/view/menu/fi0$c;
    .locals 2

    const-string v0, "primaryColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    :cond_0
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/view/menu/fi0$c;

    invoke-direct {v1, v0, p1}, Landroidx/appcompat/view/menu/fi0$c;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public final h(Lorg/json/JSONArray;)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v1, v4, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/fi0$f;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$f;

    move-result-object v4

    sget-object v8, Landroidx/appcompat/view/menu/fi0$b;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v8, v4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    or-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_1
    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_3
    or-int/lit8 v2, v2, 0x1

    :goto_1
    if-nez v3, :cond_4

    move v3, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_9

    const/16 p1, 0x9

    const/16 v1, 0x8

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 p1, 0xd

    return p1

    :pswitch_1
    return v6

    :pswitch_2
    const/16 p1, 0xb

    return p1

    :pswitch_3
    return v1

    :pswitch_4
    const/16 p1, 0xc

    :pswitch_5
    return p1

    :pswitch_6
    if-eq v3, v6, :cond_8

    if-eq v3, v5, :cond_7

    if-eq v3, v1, :cond_6

    :goto_2
    return v7

    :cond_6
    return v1

    :cond_7
    return p1

    :cond_8
    :pswitch_7
    return v0

    :cond_9
    const/4 p1, -0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lorg/json/JSONObject;)Landroidx/appcompat/view/menu/fi0$j;
    .locals 11

    const-string v0, "statusBarColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    const-string v0, "statusBarIconBrightness"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/fi0$d;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$d;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    const-string v0, "systemStatusBarContrastEnforced"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v2

    :goto_2
    const-string v0, "systemNavigationBarColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v2

    :goto_3
    const-string v0, "systemNavigationBarIconBrightness"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/fi0$d;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$d;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object v8, v2

    :goto_4
    const-string v0, "systemNavigationBarDividerColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    goto :goto_5

    :cond_5
    move-object v9, v2

    :goto_5
    const-string v0, "systemNavigationBarContrastEnforced"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_6
    move-object v10, v2

    new-instance p1, Landroidx/appcompat/view/menu/fi0$j;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Landroidx/appcompat/view/menu/fi0$j;-><init>(Ljava/lang/Integer;Landroidx/appcompat/view/menu/fi0$d;Ljava/lang/Boolean;Ljava/lang/Integer;Landroidx/appcompat/view/menu/fi0$d;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public final j(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$k;
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/fi0$k;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$k;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/fi0$b;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/fi0$k;->q:Landroidx/appcompat/view/menu/fi0$k;

    return-object p1

    :cond_0
    sget-object p1, Landroidx/appcompat/view/menu/fi0$k;->q:Landroidx/appcompat/view/menu/fi0$k;

    return-object p1

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/fi0$k;->p:Landroidx/appcompat/view/menu/fi0$k;

    return-object p1

    :cond_2
    sget-object p1, Landroidx/appcompat/view/menu/fi0$k;->o:Landroidx/appcompat/view/menu/fi0$k;

    return-object p1

    :cond_3
    sget-object p1, Landroidx/appcompat/view/menu/fi0$k;->n:Landroidx/appcompat/view/menu/fi0$k;

    return-object p1
.end method

.method public final k(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/fi0$l;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$l;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/fi0$b;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Landroidx/appcompat/view/menu/fi0$l;->o:Landroidx/appcompat/view/menu/fi0$l;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v2, Landroidx/appcompat/view/menu/fi0$l;->n:Landroidx/appcompat/view/menu/fi0$l;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public l(Landroidx/appcompat/view/menu/fi0$h;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/fi0;->b:Landroidx/appcompat/view/menu/fi0$h;

    return-void
.end method

.method public m(Z)V
    .locals 3

    const-string v0, "PlatformChannel"

    const-string v1, "Sending \'systemUIChange\' message."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/fi0;->a:Landroidx/appcompat/view/menu/kd0;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "SystemChrome.systemUIChange"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/kd0;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
