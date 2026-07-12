.class public final Landroidx/appcompat/view/menu/qr0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/qr0$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/appcompat/view/menu/qr0$a;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/rr0;

.field public final b:Landroidx/appcompat/view/menu/pr0;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/qr0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/qr0$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/qr0;->d:Landroidx/appcompat/view/menu/qr0$a;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/rr0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/qr0;->a:Landroidx/appcompat/view/menu/rr0;

    .line 3
    new-instance p1, Landroidx/appcompat/view/menu/pr0;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/pr0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/qr0;->b:Landroidx/appcompat/view/menu/pr0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/rr0;Landroidx/appcompat/view/menu/lj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/qr0;-><init>(Landroidx/appcompat/view/menu/rr0;)V

    return-void
.end method

.method public static final a(Landroidx/appcompat/view/menu/rr0;)Landroidx/appcompat/view/menu/qr0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qr0;->d:Landroidx/appcompat/view/menu/qr0$a;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/qr0$a;->a(Landroidx/appcompat/view/menu/rr0;)Landroidx/appcompat/view/menu/qr0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Landroidx/appcompat/view/menu/pr0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qr0;->b:Landroidx/appcompat/view/menu/pr0;

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/qr0;->a:Landroidx/appcompat/view/menu/rr0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/a90;->h()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$b;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/f$b;->n:Landroidx/lifecycle/f$b;

    if-ne v1, v2, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/xn0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/qr0;->a:Landroidx/appcompat/view/menu/rr0;

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/xn0;-><init>(Landroidx/appcompat/view/menu/rr0;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f;->a(Landroidx/appcompat/view/menu/z80;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/qr0;->b:Landroidx/appcompat/view/menu/pr0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/pr0;->e(Landroidx/lifecycle/f;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/qr0;->c:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/qr0;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qr0;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qr0;->a:Landroidx/appcompat/view/menu/rr0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/a90;->h()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$b;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/f$b;->p:Landroidx/lifecycle/f$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/f$b;->e(Landroidx/lifecycle/f$b;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qr0;->b:Landroidx/appcompat/view/menu/pr0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/pr0;->f(Landroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performRestore cannot be called when owner is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/qr0;->b:Landroidx/appcompat/view/menu/pr0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/pr0;->g(Landroid/os/Bundle;)V

    return-void
.end method
