.class public final enum Landroidx/appcompat/view/menu/tl0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/tl0;

.field public static final enum o:Landroidx/appcompat/view/menu/tl0;

.field public static final enum p:Landroidx/appcompat/view/menu/tl0;

.field public static final enum q:Landroidx/appcompat/view/menu/tl0;

.field public static final enum r:Landroidx/appcompat/view/menu/tl0;

.field public static final enum s:Landroidx/appcompat/view/menu/tl0;

.field public static final t:Landroid/util/SparseArray;

.field public static final synthetic u:[Landroidx/appcompat/view/menu/tl0;


# instance fields
.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v6, Landroidx/appcompat/view/menu/tl0;

    const-string v0, "DEFAULT"

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v7}, Landroidx/appcompat/view/menu/tl0;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroidx/appcompat/view/menu/tl0;->n:Landroidx/appcompat/view/menu/tl0;

    new-instance v8, Landroidx/appcompat/view/menu/tl0;

    const-string v0, "UNMETERED_ONLY"

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9, v9}, Landroidx/appcompat/view/menu/tl0;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroidx/appcompat/view/menu/tl0;->o:Landroidx/appcompat/view/menu/tl0;

    new-instance v10, Landroidx/appcompat/view/menu/tl0;

    const-string v0, "UNMETERED_OR_DAILY"

    const/4 v11, 0x2

    invoke-direct {v10, v0, v11, v11}, Landroidx/appcompat/view/menu/tl0;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroidx/appcompat/view/menu/tl0;->p:Landroidx/appcompat/view/menu/tl0;

    new-instance v12, Landroidx/appcompat/view/menu/tl0;

    const-string v0, "FAST_IF_RADIO_AWAKE"

    const/4 v13, 0x3

    invoke-direct {v12, v0, v13, v13}, Landroidx/appcompat/view/menu/tl0;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroidx/appcompat/view/menu/tl0;->q:Landroidx/appcompat/view/menu/tl0;

    new-instance v14, Landroidx/appcompat/view/menu/tl0;

    const-string v0, "NEVER"

    const/4 v15, 0x4

    invoke-direct {v14, v0, v15, v15}, Landroidx/appcompat/view/menu/tl0;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroidx/appcompat/view/menu/tl0;->r:Landroidx/appcompat/view/menu/tl0;

    new-instance v5, Landroidx/appcompat/view/menu/tl0;

    const-string v0, "UNRECOGNIZED"

    const/4 v1, 0x5

    const/4 v4, -0x1

    invoke-direct {v5, v0, v1, v4}, Landroidx/appcompat/view/menu/tl0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroidx/appcompat/view/menu/tl0;->s:Landroidx/appcompat/view/menu/tl0;

    move-object v0, v6

    move-object v1, v8

    move-object v2, v10

    move-object v3, v12

    move-object v4, v14

    move-object/from16 v16, v5

    filled-new-array/range {v0 .. v5}, [Landroidx/appcompat/view/menu/tl0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/tl0;->u:[Landroidx/appcompat/view/menu/tl0;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/tl0;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v16

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/appcompat/view/menu/tl0;->m:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/tl0;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/tl0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/tl0;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/tl0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/tl0;->u:[Landroidx/appcompat/view/menu/tl0;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/tl0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/tl0;

    return-object v0
.end method
