.class public final enum Landroidx/appcompat/view/menu/xh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/xh$a;
    }
.end annotation


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/xh;

.field public static final enum n:Landroidx/appcompat/view/menu/xh;

.field public static final enum o:Landroidx/appcompat/view/menu/xh;

.field public static final enum p:Landroidx/appcompat/view/menu/xh;

.field public static final synthetic q:[Landroidx/appcompat/view/menu/xh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/xh;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/xh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/xh;->m:Landroidx/appcompat/view/menu/xh;

    new-instance v0, Landroidx/appcompat/view/menu/xh;

    const-string v1, "LAZY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/xh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/xh;->n:Landroidx/appcompat/view/menu/xh;

    new-instance v0, Landroidx/appcompat/view/menu/xh;

    const-string v1, "ATOMIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/xh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/xh;->o:Landroidx/appcompat/view/menu/xh;

    new-instance v0, Landroidx/appcompat/view/menu/xh;

    const-string v1, "UNDISPATCHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/xh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/xh;->p:Landroidx/appcompat/view/menu/xh;

    invoke-static {}, Landroidx/appcompat/view/menu/xh;->c()[Landroidx/appcompat/view/menu/xh;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/xh;->q:[Landroidx/appcompat/view/menu/xh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic c()[Landroidx/appcompat/view/menu/xh;
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/xh;->m:Landroidx/appcompat/view/menu/xh;

    sget-object v1, Landroidx/appcompat/view/menu/xh;->n:Landroidx/appcompat/view/menu/xh;

    sget-object v2, Landroidx/appcompat/view/menu/xh;->o:Landroidx/appcompat/view/menu/xh;

    sget-object v3, Landroidx/appcompat/view/menu/xh;->p:Landroidx/appcompat/view/menu/xh;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/appcompat/view/menu/xh;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/xh;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/xh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/xh;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/xh;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/xh;->q:[Landroidx/appcompat/view/menu/xh;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/xh;

    return-object v0
.end method


# virtual methods
.method public final e(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)V
    .locals 6

    sget-object v0, Landroidx/appcompat/view/menu/xh$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/ye0;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/ye0;-><init>()V

    throw p1

    :cond_1
    invoke-static {p1, p2, p3}, Landroidx/appcompat/view/menu/n31;->a(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Landroidx/appcompat/view/menu/bh;->a(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Landroidx/appcompat/view/menu/ba;->d(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/xh;->n:Landroidx/appcompat/view/menu/xh;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
