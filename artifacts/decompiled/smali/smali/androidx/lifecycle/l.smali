.class public final Landroidx/lifecycle/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a90;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/l$a;,
        Landroidx/lifecycle/l$b;
    }
.end annotation


# static fields
.field public static final i:Landroidx/lifecycle/l$b;

.field public static final j:Landroidx/lifecycle/l;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/i;

.field public final g:Ljava/lang/Runnable;

.field public final h:Landroidx/lifecycle/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/l$b;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/lifecycle/l;->i:Landroidx/lifecycle/l$b;

    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0}, Landroidx/lifecycle/l;-><init>()V

    sput-object v0, Landroidx/lifecycle/l;->j:Landroidx/lifecycle/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/l;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/l;->d:Z

    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/appcompat/view/menu/a90;)V

    iput-object v0, p0, Landroidx/lifecycle/l;->f:Landroidx/lifecycle/i;

    new-instance v0, Landroidx/appcompat/view/menu/xj0;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/xj0;-><init>(Landroidx/lifecycle/l;)V

    iput-object v0, p0, Landroidx/lifecycle/l;->g:Ljava/lang/Runnable;

    new-instance v0, Landroidx/lifecycle/l$d;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l$d;-><init>(Landroidx/lifecycle/l;)V

    iput-object v0, p0, Landroidx/lifecycle/l;->h:Landroidx/lifecycle/n$a;

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/l;)V
    .locals 0

    invoke-static {p0}, Landroidx/lifecycle/l;->j(Landroidx/lifecycle/l;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/lifecycle/l;)Landroidx/lifecycle/n$a;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/l;->h:Landroidx/lifecycle/n$a;

    return-object p0
.end method

.method public static final synthetic c()Landroidx/lifecycle/l;
    .locals 1

    sget-object v0, Landroidx/lifecycle/l;->j:Landroidx/lifecycle/l;

    return-object v0
.end method

.method public static final j(Landroidx/lifecycle/l;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/lifecycle/l;->m()V

    invoke-virtual {p0}, Landroidx/lifecycle/l;->n()V

    return-void
.end method

.method public static final o()Landroidx/appcompat/view/menu/a90;
    .locals 1

    sget-object v0, Landroidx/lifecycle/l;->i:Landroidx/lifecycle/l$b;

    invoke-virtual {v0}, Landroidx/lifecycle/l$b;->a()Landroidx/appcompat/view/menu/a90;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 4

    iget v0, p0, Landroidx/lifecycle/l;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/l;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/l;->e:Landroid/os/Handler;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/l;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/l;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/l;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/l;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/l;->f:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/l;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/l;->e:Landroid/os/Handler;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/l;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/l;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/l;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/l;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/l;->f:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/l;->d:Z

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget v0, p0, Landroidx/lifecycle/l;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/l;->a:I

    invoke-virtual {p0}, Landroidx/lifecycle/l;->n()V

    return-void
.end method

.method public h()Landroidx/lifecycle/f;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/l;->f:Landroidx/lifecycle/i;

    return-object v0
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/l;->e:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/lifecycle/l;->f:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    new-instance v0, Landroidx/lifecycle/l$c;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l$c;-><init>(Landroidx/lifecycle/l;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/l;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/l;->c:Z

    iget-object v0, p0, Landroidx/lifecycle/l;->f:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/l;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/l;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/l;->f:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/l;->d:Z

    :cond_0
    return-void
.end method
