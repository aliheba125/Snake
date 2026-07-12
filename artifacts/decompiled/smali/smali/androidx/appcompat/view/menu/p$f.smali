.class public final Landroidx/appcompat/view/menu/p$f;
.super Landroidx/appcompat/view/menu/p$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/p$b;-><init>(Landroidx/appcompat/view/menu/p$a;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Landroidx/appcompat/view/menu/p$f;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p3, p0, Landroidx/appcompat/view/menu/p$f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p4, p0, Landroidx/appcompat/view/menu/p$f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p5, p0, Landroidx/appcompat/view/menu/p$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/view/menu/p$e;Landroidx/appcompat/view/menu/p$e;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/p$f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/p;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/p$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/view/menu/p$h;Landroidx/appcompat/view/menu/p$h;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/p$f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Landroidx/appcompat/view/menu/p$h;Landroidx/appcompat/view/menu/p$h;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/p$f;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/p$h;Ljava/lang/Thread;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/p$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
