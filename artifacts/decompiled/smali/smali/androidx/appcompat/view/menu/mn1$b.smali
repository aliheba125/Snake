.class public final Landroidx/appcompat/view/menu/mn1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/mn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/mn1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    new-instance v1, Landroidx/appcompat/view/menu/zp1;

    invoke-direct {v1, p0, p2, p1}, Landroidx/appcompat/view/menu/zp1;-><init>(Landroidx/appcompat/view/menu/mn1$b;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mn1;->n(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    new-instance v1, Landroidx/appcompat/view/menu/jq1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/jq1;-><init>(Landroidx/appcompat/view/menu/mn1$b;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mn1;->n(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    new-instance v1, Landroidx/appcompat/view/menu/hq1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/hq1;-><init>(Landroidx/appcompat/view/menu/mn1$b;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mn1;->n(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    new-instance v1, Landroidx/appcompat/view/menu/bq1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/bq1;-><init>(Landroidx/appcompat/view/menu/mn1$b;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mn1;->n(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/bm1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bm1;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    new-instance v2, Landroidx/appcompat/view/menu/lq1;

    invoke-direct {v2, p0, p1, v0}, Landroidx/appcompat/view/menu/lq1;-><init>(Landroidx/appcompat/view/menu/mn1$b;Landroid/app/Activity;Landroidx/appcompat/view/menu/bm1;)V

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/mn1;->n(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/mn1$a;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bm1;->j(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    new-instance v1, Landroidx/appcompat/view/menu/dq1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/dq1;-><init>(Landroidx/appcompat/view/menu/mn1$b;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mn1;->n(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    new-instance v1, Landroidx/appcompat/view/menu/fq1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/fq1;-><init>(Landroidx/appcompat/view/menu/mn1$b;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/mn1;->n(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method
