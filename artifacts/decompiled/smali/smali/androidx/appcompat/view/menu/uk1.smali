.class public abstract Landroidx/appcompat/view/menu/uk1;
.super Landroidx/appcompat/view/menu/xj1;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/zj1;


# direct methods
.method public static j(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/zj1;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/zj1;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/zj1;

    return-object v0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/sk1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/sk1;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
