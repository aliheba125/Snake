.class public abstract Landroidx/appcompat/view/menu/y7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/xg;
.implements Landroidx/appcompat/view/menu/wh;
.implements Ljava/io/Serializable;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/xg;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/y7;->m:Landroidx/appcompat/view/menu/xg;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;
    .locals 0

    const-string p1, "completion"

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Landroidx/appcompat/view/menu/xg;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y7;->m:Landroidx/appcompat/view/menu/xg;

    return-object v0
.end method

.method public g()Landroidx/appcompat/view/menu/wh;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y7;->m:Landroidx/appcompat/view/menu/xg;

    instance-of v1, v0, Landroidx/appcompat/view/menu/wh;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/wh;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public j()Ljava/lang/StackTraceElement;
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/fj;->d(Landroidx/appcompat/view/menu/y7;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public abstract k(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 3

    move-object v0, p0

    :goto_0
    invoke-static {v0}, Landroidx/appcompat/view/menu/gj;->b(Landroidx/appcompat/view/menu/xg;)V

    check-cast v0, Landroidx/appcompat/view/menu/y7;

    iget-object v1, v0, Landroidx/appcompat/view/menu/y7;->m:Landroidx/appcompat/view/menu/xg;

    invoke-static {v1}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y7;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v2, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y7;->l()V

    instance-of v0, v1, Landroidx/appcompat/view/menu/y7;

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuation at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y7;->j()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
