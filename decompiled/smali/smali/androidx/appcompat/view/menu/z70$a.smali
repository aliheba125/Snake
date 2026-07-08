.class public Landroidx/appcompat/view/menu/z70$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/z70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/util/Map;

.field public final synthetic b:Landroidx/appcompat/view/menu/z70;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/z70;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z70$a;->b:Landroidx/appcompat/view/menu/z70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z70$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public C(Landroidx/appcompat/view/menu/id0;Landroidx/appcompat/view/menu/kd0$d;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/z70$a;->b:Landroidx/appcompat/view/menu/z70;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z70;->a(Landroidx/appcompat/view/menu/z70;)Landroidx/appcompat/view/menu/z70$b;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/z70$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "getKeyboardState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Landroidx/appcompat/view/menu/kd0$d;->a()V

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/z70$a;->b:Landroidx/appcompat/view/menu/z70;

    invoke-static {p1}, Landroidx/appcompat/view/menu/z70;->a(Landroidx/appcompat/view/menu/z70;)Landroidx/appcompat/view/menu/z70$b;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/z70$b;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/z70$a;->a:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-interface {p2, v1, p1, v0}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/z70$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
