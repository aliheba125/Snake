.class public final Landroidx/appcompat/view/menu/xw0;
.super Landroidx/appcompat/view/menu/u;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Landroidx/appcompat/view/menu/xw0;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/xw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/u;-><init>()V

    return-void
.end method

.method public static final synthetic c()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/xw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/vw0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/xw0;->d(Landroidx/appcompat/view/menu/vw0;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)[Landroidx/appcompat/view/menu/xg;
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/vw0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/xw0;->f(Landroidx/appcompat/view/menu/vw0;)[Landroidx/appcompat/view/menu/xg;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroidx/appcompat/view/menu/vw0;)Z
    .locals 1

    sget-object p1, Landroidx/appcompat/view/menu/xw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/ww0;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final e(Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/y9;

    invoke-static {p1}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->z()V

    invoke-static {}, Landroidx/appcompat/view/menu/xw0;->c()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/ww0;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    invoke-static {v1, p0, v2, v0}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    sget-object v1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-static {v1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_2

    return-object v0

    :cond_2
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public f(Landroidx/appcompat/view/menu/vw0;)[Landroidx/appcompat/view/menu/xg;
    .locals 1

    sget-object p1, Landroidx/appcompat/view/menu/xw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/t;->a:[Landroidx/appcompat/view/menu/xg;

    return-object p1
.end method

.method public final g()V
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/xw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/ww0;->c()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/ww0;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    if-ne v1, v2, :cond_3

    sget-object v2, Landroidx/appcompat/view/menu/xw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/ww0;->c()Landroidx/appcompat/view/menu/my0;

    move-result-object v3

    invoke-static {v2, p0, v1, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_3
    sget-object v2, Landroidx/appcompat/view/menu/xw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/ww0;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object v3

    invoke-static {v2, p0, v1, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/view/menu/y9;

    sget-object v0, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-static {v0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Z
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/xw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/ww0;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/ww0;->c()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
