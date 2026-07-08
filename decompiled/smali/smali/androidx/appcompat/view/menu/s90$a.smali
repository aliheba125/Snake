.class public Landroidx/appcompat/view/menu/s90$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/s90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/s90;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/s90;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/s90$a;->a:Landroidx/appcompat/view/menu/s90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Landroidx/appcompat/view/menu/id0;Landroidx/appcompat/view/menu/kd0$d;)V
    .locals 4

    const-string v0, "locale"

    iget-object v1, p0, Landroidx/appcompat/view/menu/s90$a;->a:Landroidx/appcompat/view/menu/s90;

    invoke-static {v1}, Landroidx/appcompat/view/menu/s90;->a(Landroidx/appcompat/view/menu/s90;)Landroidx/appcompat/view/menu/s90$b;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "Localization.getStringResource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2}, Landroidx/appcompat/view/menu/kd0$d;->a()V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/id0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "key"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/s90$a;->a:Landroidx/appcompat/view/menu/s90;

    invoke-static {v0}, Landroidx/appcompat/view/menu/s90;->a(Landroidx/appcompat/view/menu/s90;)Landroidx/appcompat/view/menu/s90$b;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Landroidx/appcompat/view/menu/s90$b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "error"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
