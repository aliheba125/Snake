.class public abstract Landroidx/appcompat/view/menu/e9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "binder"

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/e9;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "binder"

    invoke-static {v0, v1, p2}, Landroidx/appcompat/view/menu/e9;->d(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public static d(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v0, Landroidx/appcompat/view/menu/d9;->c:Landroidx/appcompat/view/menu/go0$d;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
