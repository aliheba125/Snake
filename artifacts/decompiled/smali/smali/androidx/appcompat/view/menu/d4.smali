.class public abstract Landroidx/appcompat/view/menu/d4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/c00;->b:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/e4;->b:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0
.end method
