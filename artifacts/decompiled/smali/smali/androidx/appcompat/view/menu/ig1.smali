.class public final Landroidx/appcompat/view/menu/ig1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic m:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ig1;->m:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ig1;->m:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ug1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ig1;->m:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
