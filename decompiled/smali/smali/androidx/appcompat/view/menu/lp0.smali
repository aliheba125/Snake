.class public abstract Landroidx/appcompat/view/menu/lp0;
.super Landroidx/appcompat/view/menu/y7;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xg;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/y7;-><init>(Landroidx/appcompat/view/menu/xg;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/kh;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    return-object v0
.end method
