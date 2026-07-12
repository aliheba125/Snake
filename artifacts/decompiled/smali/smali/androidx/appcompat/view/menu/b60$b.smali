.class public final Landroidx/appcompat/view/menu/b60$b;
.super Landroidx/appcompat/view/menu/zg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/b60;->a(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public p:I

.field public final synthetic q:Landroidx/appcompat/view/menu/tw;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Landroidx/appcompat/view/menu/b60$b;->q:Landroidx/appcompat/view/menu/tw;

    iput-object p4, p0, Landroidx/appcompat/view/menu/b60$b;->r:Ljava/lang/Object;

    const-string p3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/zg;-><init>(Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/kh;)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/b60$b;->p:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Landroidx/appcompat/view/menu/b60$b;->p:I

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v2, p0, Landroidx/appcompat/view/menu/b60$b;->p:I

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/b60$b;->q:Landroidx/appcompat/view/menu/tw;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/b60$b;->q:Landroidx/appcompat/view/menu/tw;

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/q21;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/tw;

    iget-object v0, p0, Landroidx/appcompat/view/menu/b60$b;->r:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Landroidx/appcompat/view/menu/tw;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
