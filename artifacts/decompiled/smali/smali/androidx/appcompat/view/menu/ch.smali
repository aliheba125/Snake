.class public final Landroidx/appcompat/view/menu/ch;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/xg;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ch;->m:Landroidx/appcompat/view/menu/xg;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ch;->m:Landroidx/appcompat/view/menu/xg;

    sget-object v1, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ch;->m:Landroidx/appcompat/view/menu/xg;

    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContinuationOutcomeReceiver(outcomeReceived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
