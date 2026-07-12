.class public final enum Landroidx/appcompat/view/menu/bg1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/bg1;

.field public static final enum o:Landroidx/appcompat/view/menu/bg1;

.field public static final enum p:Landroidx/appcompat/view/menu/bg1;

.field public static final enum q:Landroidx/appcompat/view/menu/bg1;

.field public static final enum r:Landroidx/appcompat/view/menu/bg1;

.field public static final enum s:Landroidx/appcompat/view/menu/bg1;

.field public static final enum t:Landroidx/appcompat/view/menu/bg1;

.field public static final enum u:Landroidx/appcompat/view/menu/bg1;

.field public static final synthetic v:[Landroidx/appcompat/view/menu/bg1;


# instance fields
.field public final m:C


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/appcompat/view/menu/bg1;

    const/4 v1, 0x0

    const/16 v2, 0x30

    const-string v3, "UNSET"

    invoke-direct {v0, v3, v1, v2}, Landroidx/appcompat/view/menu/bg1;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Landroidx/appcompat/view/menu/bg1;->n:Landroidx/appcompat/view/menu/bg1;

    new-instance v1, Landroidx/appcompat/view/menu/bg1;

    const/4 v2, 0x1

    const/16 v3, 0x31

    const-string v4, "REMOTE_DEFAULT"

    invoke-direct {v1, v4, v2, v3}, Landroidx/appcompat/view/menu/bg1;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Landroidx/appcompat/view/menu/bg1;->o:Landroidx/appcompat/view/menu/bg1;

    new-instance v2, Landroidx/appcompat/view/menu/bg1;

    const/4 v3, 0x2

    const/16 v4, 0x32

    const-string v5, "REMOTE_DELEGATION"

    invoke-direct {v2, v5, v3, v4}, Landroidx/appcompat/view/menu/bg1;-><init>(Ljava/lang/String;IC)V

    sput-object v2, Landroidx/appcompat/view/menu/bg1;->p:Landroidx/appcompat/view/menu/bg1;

    new-instance v3, Landroidx/appcompat/view/menu/bg1;

    const/4 v4, 0x3

    const/16 v5, 0x33

    const-string v6, "MANIFEST"

    invoke-direct {v3, v6, v4, v5}, Landroidx/appcompat/view/menu/bg1;-><init>(Ljava/lang/String;IC)V

    sput-object v3, Landroidx/appcompat/view/menu/bg1;->q:Landroidx/appcompat/view/menu/bg1;

    new-instance v4, Landroidx/appcompat/view/menu/bg1;

    const/4 v5, 0x4

    const/16 v6, 0x34

    const-string v7, "INITIALIZATION"

    invoke-direct {v4, v7, v5, v6}, Landroidx/appcompat/view/menu/bg1;-><init>(Ljava/lang/String;IC)V

    sput-object v4, Landroidx/appcompat/view/menu/bg1;->r:Landroidx/appcompat/view/menu/bg1;

    new-instance v5, Landroidx/appcompat/view/menu/bg1;

    const/4 v6, 0x5

    const/16 v7, 0x35

    const-string v8, "API"

    invoke-direct {v5, v8, v6, v7}, Landroidx/appcompat/view/menu/bg1;-><init>(Ljava/lang/String;IC)V

    sput-object v5, Landroidx/appcompat/view/menu/bg1;->s:Landroidx/appcompat/view/menu/bg1;

    new-instance v6, Landroidx/appcompat/view/menu/bg1;

    const/4 v7, 0x6

    const/16 v8, 0x36

    const-string v9, "CHILD_ACCOUNT"

    invoke-direct {v6, v9, v7, v8}, Landroidx/appcompat/view/menu/bg1;-><init>(Ljava/lang/String;IC)V

    sput-object v6, Landroidx/appcompat/view/menu/bg1;->t:Landroidx/appcompat/view/menu/bg1;

    new-instance v7, Landroidx/appcompat/view/menu/bg1;

    const/4 v8, 0x7

    const/16 v9, 0x39

    const-string v10, "FAILSAFE"

    invoke-direct {v7, v10, v8, v9}, Landroidx/appcompat/view/menu/bg1;-><init>(Ljava/lang/String;IC)V

    sput-object v7, Landroidx/appcompat/view/menu/bg1;->u:Landroidx/appcompat/view/menu/bg1;

    filled-new-array/range {v0 .. v7}, [Landroidx/appcompat/view/menu/bg1;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/bg1;->v:[Landroidx/appcompat/view/menu/bg1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Landroidx/appcompat/view/menu/bg1;->m:C

    return-void
.end method

.method public static bridge synthetic c(Landroidx/appcompat/view/menu/bg1;)C
    .locals 0

    iget-char p0, p0, Landroidx/appcompat/view/menu/bg1;->m:C

    return p0
.end method

.method public static e(C)Landroidx/appcompat/view/menu/bg1;
    .locals 5

    invoke-static {}, Landroidx/appcompat/view/menu/bg1;->values()[Landroidx/appcompat/view/menu/bg1;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-char v4, v3, Landroidx/appcompat/view/menu/bg1;->m:C

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/appcompat/view/menu/bg1;->n:Landroidx/appcompat/view/menu/bg1;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/bg1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/bg1;->v:[Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/bg1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/bg1;

    return-object v0
.end method
