.class public Landroidx/appcompat/view/menu/qt0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/qt0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/f8;

.field public b:Ljava/util/Map;

.field public c:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/f8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    iput-object p1, p0, Landroidx/appcompat/view/menu/qt0$b;->a:Landroidx/appcompat/view/menu/f8;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message: \ntextScaleFactor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    const-string v2, "textScaleFactor"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nalwaysUse24HourFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    const-string v2, "alwaysUse24HourFormat"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nplatformBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    const-string v2, "platformBrightness"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsChannel"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$b;->c:Landroid/util/DisplayMetrics;

    invoke-static {}, Landroidx/appcompat/view/menu/qt0;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/qt0$a$b;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/qt0$a$b;-><init>(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Landroidx/appcompat/view/menu/qt0;->a()Landroidx/appcompat/view/menu/qt0$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/qt0$a;->b(Landroidx/appcompat/view/menu/qt0$a$b;)Landroidx/appcompat/view/menu/f8$e;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    iget v1, v1, Landroidx/appcompat/view/menu/qt0$a$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "configurationId"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/qt0$b;->a:Landroidx/appcompat/view/menu/f8;

    iget-object v2, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/f8;->d(Ljava/lang/Object;Landroidx/appcompat/view/menu/f8$e;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$b;->a:Landroidx/appcompat/view/menu/f8;

    iget-object v1, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/f8;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)Landroidx/appcompat/view/menu/qt0$b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    const-string v1, "brieflyShowPassword"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public c(Landroid/util/DisplayMetrics;)Landroidx/appcompat/view/menu/qt0$b;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qt0$b;->c:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public d(Z)Landroidx/appcompat/view/menu/qt0$b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    const-string v1, "nativeSpellCheckServiceDefined"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public e(Landroidx/appcompat/view/menu/qt0$c;)Landroidx/appcompat/view/menu/qt0$b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    const-string v1, "platformBrightness"

    iget-object p1, p1, Landroidx/appcompat/view/menu/qt0$c;->m:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public f(F)Landroidx/appcompat/view/menu/qt0$b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    const-string v1, "textScaleFactor"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public g(Z)Landroidx/appcompat/view/menu/qt0$b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$b;->b:Ljava/util/Map;

    const-string v1, "alwaysUse24HourFormat"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
