.class public final Landroidx/appcompat/view/menu/uq;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/uq$a;
    }
.end annotation


# instance fields
.field public m:Landroidx/appcompat/view/menu/uq$a;

.field public final n:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/uq;->n:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/uq;->m:Landroidx/appcompat/view/menu/uq$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/uq$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/uq;->n:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/uq$a;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/uq;->m:Landroidx/appcompat/view/menu/uq$a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/view/menu/uq$a;->n:I

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uq;->n:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
