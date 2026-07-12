.class public final enum Landroidx/appcompat/view/menu/nl$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/nl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/nl$a;

.field public static final enum n:Landroidx/appcompat/view/menu/nl$a;

.field public static final enum o:Landroidx/appcompat/view/menu/nl$a;

.field public static final enum p:Landroidx/appcompat/view/menu/nl$a;

.field public static final enum q:Landroidx/appcompat/view/menu/nl$a;

.field public static final enum r:Landroidx/appcompat/view/menu/nl$a;

.field public static final enum s:Landroidx/appcompat/view/menu/nl$a;

.field public static final enum t:Landroidx/appcompat/view/menu/nl$a;

.field public static final synthetic u:[Landroidx/appcompat/view/menu/nl$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/appcompat/view/menu/nl$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/nl$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/nl$a;->m:Landroidx/appcompat/view/menu/nl$a;

    new-instance v1, Landroidx/appcompat/view/menu/nl$a;

    const-string v2, "HORIZONTAL_DIMENSION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/menu/nl$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/appcompat/view/menu/nl$a;->n:Landroidx/appcompat/view/menu/nl$a;

    new-instance v2, Landroidx/appcompat/view/menu/nl$a;

    const-string v3, "VERTICAL_DIMENSION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/nl$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/appcompat/view/menu/nl$a;->o:Landroidx/appcompat/view/menu/nl$a;

    new-instance v3, Landroidx/appcompat/view/menu/nl$a;

    const-string v4, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/nl$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/appcompat/view/menu/nl$a;->p:Landroidx/appcompat/view/menu/nl$a;

    new-instance v4, Landroidx/appcompat/view/menu/nl$a;

    const-string v5, "RIGHT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/view/menu/nl$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/appcompat/view/menu/nl$a;->q:Landroidx/appcompat/view/menu/nl$a;

    new-instance v5, Landroidx/appcompat/view/menu/nl$a;

    const-string v6, "TOP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/view/menu/nl$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/appcompat/view/menu/nl$a;->r:Landroidx/appcompat/view/menu/nl$a;

    new-instance v6, Landroidx/appcompat/view/menu/nl$a;

    const-string v7, "BOTTOM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/view/menu/nl$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/appcompat/view/menu/nl$a;->s:Landroidx/appcompat/view/menu/nl$a;

    new-instance v7, Landroidx/appcompat/view/menu/nl$a;

    const-string v8, "BASELINE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/view/menu/nl$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/appcompat/view/menu/nl$a;->t:Landroidx/appcompat/view/menu/nl$a;

    filled-new-array/range {v0 .. v7}, [Landroidx/appcompat/view/menu/nl$a;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/nl$a;->u:[Landroidx/appcompat/view/menu/nl$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/nl$a;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/nl$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/nl$a;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/nl$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/nl$a;->u:[Landroidx/appcompat/view/menu/nl$a;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/nl$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/nl$a;

    return-object v0
.end method
