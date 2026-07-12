.class public final Landroidx/appcompat/view/menu/jo0$c;
.super Landroidx/appcompat/view/menu/l40;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/jo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final transient o:[Ljava/lang/Object;

.field public final transient p:I

.field public final transient q:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l40;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jo0$c;->o:[Ljava/lang/Object;

    iput p2, p0, Landroidx/appcompat/view/menu/jo0$c;->p:I

    iput p3, p0, Landroidx/appcompat/view/menu/jo0$c;->q:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/jo0$c;->q:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/nj0;->g(II)I

    iget-object v0, p0, Landroidx/appcompat/view/menu/jo0$c;->o:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Landroidx/appcompat/view/menu/jo0$c;->p:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/jo0$c;->q:I

    return v0
.end method
