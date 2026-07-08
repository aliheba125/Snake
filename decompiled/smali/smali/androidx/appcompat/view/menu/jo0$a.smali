.class public Landroidx/appcompat/view/menu/jo0$a;
.super Landroidx/appcompat/view/menu/o40;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/jo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final transient o:Landroidx/appcompat/view/menu/m40;

.field public final transient p:[Ljava/lang/Object;

.field public final transient q:I

.field public final transient r:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/m40;[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o40;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jo0$a;->o:Landroidx/appcompat/view/menu/m40;

    iput-object p2, p0, Landroidx/appcompat/view/menu/jo0$a;->p:[Ljava/lang/Object;

    iput p3, p0, Landroidx/appcompat/view/menu/jo0$a;->q:I

    iput p4, p0, Landroidx/appcompat/view/menu/jo0$a;->r:I

    return-void
.end method

.method public static synthetic A(Landroidx/appcompat/view/menu/jo0$a;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/jo0$a;->p:[Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic B(Landroidx/appcompat/view/menu/jo0$a;)I
    .locals 0

    iget p0, p0, Landroidx/appcompat/view/menu/jo0$a;->q:I

    return p0
.end method

.method public static synthetic z(Landroidx/appcompat/view/menu/jo0$a;)I
    .locals 0

    iget p0, p0, Landroidx/appcompat/view/menu/jo0$a;->r:I

    return p0
.end method


# virtual methods
.method public C()Landroidx/appcompat/view/menu/t31;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o40;->k()Landroidx/appcompat/view/menu/l40;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l40;->r()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/jo0$a;->o:Landroidx/appcompat/view/menu/m40;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/m40;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public d([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o40;->k()Landroidx/appcompat/view/menu/l40;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/l40;->d([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jo0$a;->C()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public s()Landroidx/appcompat/view/menu/l40;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/jo0$a$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/jo0$a$a;-><init>(Landroidx/appcompat/view/menu/jo0$a;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/jo0$a;->r:I

    return v0
.end method
