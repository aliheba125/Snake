.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Landroidx/appcompat/view/menu/kc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/kc;-><init>()V

    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;Landroidx/appcompat/view/menu/jc;)I
    .locals 1

    :try_start_0
    new-instance v0, Landroidx/appcompat/view/menu/er;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/er;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/jc;->d()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/er;->k(Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz0;->a(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/16 p1, 0x1f4

    return p1
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    invoke-static {p1, v0, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->g(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->A(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->s(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
