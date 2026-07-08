.class public final Landroidx/appcompat/view/menu/zp1;
.super Landroidx/appcompat/view/menu/mn1$a;
.source "SourceFile"


# instance fields
.field public final synthetic q:Landroid/os/Bundle;

.field public final synthetic r:Landroid/app/Activity;

.field public final synthetic s:Landroidx/appcompat/view/menu/mn1$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1$b;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/zp1;->s:Landroidx/appcompat/view/menu/mn1$b;

    iput-object p2, p0, Landroidx/appcompat/view/menu/zp1;->q:Landroid/os/Bundle;

    iput-object p3, p0, Landroidx/appcompat/view/menu/zp1;->r:Landroid/app/Activity;

    iget-object p1, p1, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/mn1$a;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/zp1;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/zp1;->q:Landroid/os/Bundle;

    const-string v2, "com.google.app_measurement.screen_service"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/zp1;->q:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/zp1;->s:Landroidx/appcompat/view/menu/mn1$b;

    iget-object v1, v1, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mn1;->d(Landroidx/appcompat/view/menu/mn1;)Landroidx/appcompat/view/menu/fm1;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/fm1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/zp1;->r:Landroid/app/Activity;

    invoke-static {v2}, Landroidx/appcompat/view/menu/vf0;->k(Ljava/lang/Object;)Landroidx/appcompat/view/menu/b20;

    move-result-object v2

    iget-wide v3, p0, Landroidx/appcompat/view/menu/mn1$a;->n:J

    invoke-interface {v1, v2, v0, v3, v4}, Landroidx/appcompat/view/menu/fm1;->onActivityCreated(Landroidx/appcompat/view/menu/b20;Landroid/os/Bundle;J)V

    return-void
.end method
