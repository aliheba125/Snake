.class public final Landroidx/lifecycle/l$c;
.super Landroidx/appcompat/view/menu/ao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/l;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/l;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/l$c;->this$0:Landroidx/lifecycle/l;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "activity"

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    sget-object p2, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n$b;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/n$b;->b(Landroid/app/Activity;)Landroidx/lifecycle/n;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/l$c;->this$0:Landroidx/lifecycle/l;

    invoke-static {p2}, Landroidx/lifecycle/l;->b(Landroidx/lifecycle/l;)Landroidx/lifecycle/n$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/n;->e(Landroidx/lifecycle/n$a;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/lifecycle/l$c;->this$0:Landroidx/lifecycle/l;

    invoke-virtual {p1}, Landroidx/lifecycle/l;->d()V

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "activity"

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/lifecycle/l$c$a;

    iget-object v0, p0, Landroidx/lifecycle/l$c;->this$0:Landroidx/lifecycle/l;

    invoke-direct {p2, v0}, Landroidx/lifecycle/l$c$a;-><init>(Landroidx/lifecycle/l;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/l$a;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/lifecycle/l$c;->this$0:Landroidx/lifecycle/l;

    invoke-virtual {p1}, Landroidx/lifecycle/l;->g()V

    return-void
.end method
