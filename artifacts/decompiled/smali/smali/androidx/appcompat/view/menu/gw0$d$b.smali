.class public final enum Landroidx/appcompat/view/menu/gw0$d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gw0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/gw0$d$b$a;,
        Landroidx/appcompat/view/menu/gw0$d$b$b;
    }
.end annotation


# static fields
.field public static final m:Landroidx/appcompat/view/menu/gw0$d$b$a;

.field public static final enum n:Landroidx/appcompat/view/menu/gw0$d$b;

.field public static final enum o:Landroidx/appcompat/view/menu/gw0$d$b;

.field public static final enum p:Landroidx/appcompat/view/menu/gw0$d$b;

.field public static final enum q:Landroidx/appcompat/view/menu/gw0$d$b;

.field public static final synthetic r:[Landroidx/appcompat/view/menu/gw0$d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/gw0$d$b;

    const-string v1, "REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/gw0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->n:Landroidx/appcompat/view/menu/gw0$d$b;

    new-instance v0, Landroidx/appcompat/view/menu/gw0$d$b;

    const-string v1, "VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/gw0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->o:Landroidx/appcompat/view/menu/gw0$d$b;

    new-instance v0, Landroidx/appcompat/view/menu/gw0$d$b;

    const-string v1, "GONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/gw0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->p:Landroidx/appcompat/view/menu/gw0$d$b;

    new-instance v0, Landroidx/appcompat/view/menu/gw0$d$b;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/gw0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->q:Landroidx/appcompat/view/menu/gw0$d$b;

    invoke-static {}, Landroidx/appcompat/view/menu/gw0$d$b;->c()[Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->r:[Landroidx/appcompat/view/menu/gw0$d$b;

    new-instance v0, Landroidx/appcompat/view/menu/gw0$d$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/gw0$d$b$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->m:Landroidx/appcompat/view/menu/gw0$d$b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic c()[Landroidx/appcompat/view/menu/gw0$d$b;
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->n:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object v1, Landroidx/appcompat/view/menu/gw0$d$b;->o:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object v2, Landroidx/appcompat/view/menu/gw0$d$b;->p:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object v3, Landroidx/appcompat/view/menu/gw0$d$b;->q:Landroidx/appcompat/view/menu/gw0$d$b;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v0

    return-object v0
.end method

.method public static final g(I)Landroidx/appcompat/view/menu/gw0$d$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->m:Landroidx/appcompat/view/menu/gw0$d$b$a;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/gw0$d$b$a;->b(I)Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/gw0$d$b;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/gw0$d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/gw0$d$b;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/gw0$d$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->r:[Landroidx/appcompat/view/menu/gw0$d$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/gw0$d$b;

    return-object v0
.end method


# virtual methods
.method public final e(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/appcompat/view/menu/gw0$d$b$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_9

    const-string v1, "SpecialEffectsController: Setting view "

    if-eq v0, v3, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to INVISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to GONE"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to VISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    :cond_6
    if-nez v2, :cond_8

    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Adding view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to Container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_a
    if-eqz v2, :cond_c

    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpecialEffectsController: Removing view "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from container "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    :goto_0
    return-void
.end method
