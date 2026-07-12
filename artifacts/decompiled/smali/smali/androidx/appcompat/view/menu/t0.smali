.class public abstract Landroidx/appcompat/view/menu/t0;
.super Landroidx/appcompat/view/menu/mz$a;
.source "SourceFile"


# direct methods
.method public static j(Landroidx/appcompat/view/menu/mz;)Landroid/accounts/Account;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-interface {p0}, Landroidx/appcompat/view/menu/mz;->b()Landroid/accounts/Account;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_0
    return-object v0
.end method
