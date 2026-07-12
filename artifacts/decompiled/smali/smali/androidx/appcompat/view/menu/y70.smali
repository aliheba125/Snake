.class public Landroidx/appcompat/view/menu/y70;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/y70$b;,
        Landroidx/appcompat/view/menu/y70$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/f8;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/i8;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/f8;

    const-string v1, "flutter/keyevent"

    sget-object v2, Landroidx/appcompat/view/menu/m60;->a:Landroidx/appcompat/view/menu/m60;

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/f8;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/xc0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y70;->a:Landroidx/appcompat/view/menu/f8;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/y70$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/y70;->d(Landroidx/appcompat/view/menu/y70$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Landroidx/appcompat/view/menu/y70$a;)Landroidx/appcompat/view/menu/f8$e;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/x70;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/x70;-><init>(Landroidx/appcompat/view/menu/y70$a;)V

    return-object v0
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/y70$a;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "handled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unpack JSON message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyEventChannel"

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/y70$a;->a(Z)V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/appcompat/view/menu/y70$b;Z)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "keyup"

    goto :goto_0

    :cond_0
    const-string p2, "keydown"

    :goto_0
    const-string v1, "type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "keymap"

    const-string v1, "android"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/appcompat/view/menu/y70$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "flags"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/appcompat/view/menu/y70$b;->a:Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "plainCodePoint"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/appcompat/view/menu/y70$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "codePoint"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/appcompat/view/menu/y70$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "keyCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/appcompat/view/menu/y70$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "scanCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/appcompat/view/menu/y70$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "metaState"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/appcompat/view/menu/y70$b;->b:Ljava/lang/Character;

    if-eqz p2, :cond_1

    const-string v1, "character"

    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p1, Landroidx/appcompat/view/menu/y70$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "source"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/appcompat/view/menu/y70$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "deviceId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Landroidx/appcompat/view/menu/y70$b;->a:Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "repeatCount"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public e(Landroidx/appcompat/view/menu/y70$b;ZLandroidx/appcompat/view/menu/y70$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y70;->a:Landroidx/appcompat/view/menu/f8;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/y70;->c(Landroidx/appcompat/view/menu/y70$b;Z)Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Landroidx/appcompat/view/menu/y70;->b(Landroidx/appcompat/view/menu/y70$a;)Landroidx/appcompat/view/menu/f8$e;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/f8;->d(Ljava/lang/Object;Landroidx/appcompat/view/menu/f8$e;)V

    return-void
.end method
