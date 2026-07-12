.class public final Landroidx/appcompat/view/menu/r72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public m:Ljava/util/Iterator;

.field public final synthetic n:Landroidx/appcompat/view/menu/n72;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/n72;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/r72;->n:Landroidx/appcompat/view/menu/n72;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/n72;->d(Landroidx/appcompat/view/menu/n72;)Landroidx/appcompat/view/menu/c22;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/r72;->m:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r72;->m:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r72;->m:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
