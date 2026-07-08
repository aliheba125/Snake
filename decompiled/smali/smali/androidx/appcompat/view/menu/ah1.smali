.class public final Landroidx/appcompat/view/menu/ah1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public m:I

.field public final synthetic n:Landroidx/appcompat/view/menu/ug1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ug1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ah1;->n:Landroidx/appcompat/view/menu/ug1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/view/menu/ah1;->m:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/ah1;->m:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/ah1;->n:Landroidx/appcompat/view/menu/ug1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ug1;->h(Landroidx/appcompat/view/menu/ug1;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/ah1;->m:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/ah1;->n:Landroidx/appcompat/view/menu/ug1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ug1;->h(Landroidx/appcompat/view/menu/ug1;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/ug1;

    iget v1, p0, Landroidx/appcompat/view/menu/ah1;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/ah1;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
