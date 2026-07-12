.class public Landroidx/appcompat/view/menu/r10$h;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/r10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/location/ILocationListener$Stub;

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/od0;->d([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/x90;->b:Landroidx/appcompat/view/menu/go0$b;

    new-instance v2, Landroidx/appcompat/view/menu/u90;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/u90;-><init>()V

    sget-object v3, Landroidx/appcompat/view/menu/x90;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/u90;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
