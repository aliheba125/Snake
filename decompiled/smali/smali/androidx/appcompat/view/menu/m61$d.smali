.class public Landroidx/appcompat/view/menu/m61$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/m61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/m61$d;->a:I

    iput p2, p0, Landroidx/appcompat/view/menu/m61$d;->b:I

    iput p3, p0, Landroidx/appcompat/view/menu/m61$d;->c:I

    iput p4, p0, Landroidx/appcompat/view/menu/m61$d;->d:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/m61$d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Landroidx/appcompat/view/menu/m61$d;->a:I

    iput v0, p0, Landroidx/appcompat/view/menu/m61$d;->a:I

    .line 4
    iget v0, p1, Landroidx/appcompat/view/menu/m61$d;->b:I

    iput v0, p0, Landroidx/appcompat/view/menu/m61$d;->b:I

    .line 5
    iget v0, p1, Landroidx/appcompat/view/menu/m61$d;->c:I

    iput v0, p0, Landroidx/appcompat/view/menu/m61$d;->c:I

    .line 6
    iget p1, p1, Landroidx/appcompat/view/menu/m61$d;->d:I

    iput p1, p0, Landroidx/appcompat/view/menu/m61$d;->d:I

    return-void
.end method
