.class public Landroidx/appcompat/view/menu/ae;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a90;
.implements Landroidx/appcompat/view/menu/eg0;
.implements Landroidx/appcompat/view/menu/rr0;


# instance fields
.field public a:Landroidx/lifecycle/i;

.field public final b:Landroidx/appcompat/view/menu/qr0;

.field public final c:Landroidx/appcompat/view/menu/cg0;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget-object p1, Landroidx/appcompat/view/menu/qr0;->d:Landroidx/appcompat/view/menu/qr0$a;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/qr0$a;->a(Landroidx/appcompat/view/menu/rr0;)Landroidx/appcompat/view/menu/qr0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ae;->b:Landroidx/appcompat/view/menu/qr0;

    new-instance p1, Landroidx/appcompat/view/menu/cg0;

    new-instance p2, Landroidx/appcompat/view/menu/zd;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/zd;-><init>(Landroidx/appcompat/view/menu/ae;)V

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/cg0;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ae;->c:Landroidx/appcompat/view/menu/cg0;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/ae;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/ae;->d(Landroidx/appcompat/view/menu/ae;)V

    return-void
.end method

.method public static final d(Landroidx/appcompat/view/menu/ae;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ae;->c()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Landroidx/lifecycle/i;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ae;->a:Landroidx/lifecycle/i;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/appcompat/view/menu/a90;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ae;->a:Landroidx/lifecycle/i;

    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/h61;->a(Landroid/view/View;Landroidx/appcompat/view/menu/a90;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/i61;->a(Landroid/view/View;Landroidx/appcompat/view/menu/eg0;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/j61;->a(Landroid/view/View;Landroidx/appcompat/view/menu/rr0;)V

    return-void
.end method

.method public h()Landroidx/lifecycle/f;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ae;->b()Landroidx/lifecycle/i;

    move-result-object v0

    return-object v0
.end method

.method public final k()Landroidx/appcompat/view/menu/cg0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ae;->c:Landroidx/appcompat/view/menu/cg0;

    return-object v0
.end method

.method public l()Landroidx/appcompat/view/menu/pr0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ae;->b:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qr0;->b()Landroidx/appcompat/view/menu/pr0;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ae;->c:Landroidx/appcompat/view/menu/cg0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cg0;->e()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ae;->c:Landroidx/appcompat/view/menu/cg0;

    invoke-static {p0}, Landroidx/appcompat/view/menu/yd;->a(Landroidx/appcompat/view/menu/ae;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    const-string v2, "onBackInvokedDispatcher"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/cg0;->h(Landroid/window/OnBackInvokedDispatcher;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ae;->b:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/qr0;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ae;->b()Landroidx/lifecycle/i;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "super.onSaveInstanceState()"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ae;->b:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/qr0;->e(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ae;->b()Landroidx/lifecycle/i;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ae;->b()Landroidx/lifecycle/i;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ae;->a:Landroidx/lifecycle/i;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ae;->c()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ae;->c()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ae;->c()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
