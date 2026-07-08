.class public final enum Landroidx/appcompat/view/menu/tq1$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/h12;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/tq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/tq1$a;

.field public static final enum o:Landroidx/appcompat/view/menu/tq1$a;

.field public static final enum p:Landroidx/appcompat/view/menu/tq1$a;

.field public static final enum q:Landroidx/appcompat/view/menu/tq1$a;

.field public static final enum r:Landroidx/appcompat/view/menu/tq1$a;

.field public static final enum s:Landroidx/appcompat/view/menu/tq1$a;

.field public static final enum t:Landroidx/appcompat/view/menu/tq1$a;

.field public static final u:Landroidx/appcompat/view/menu/f12;

.field public static final synthetic v:[Landroidx/appcompat/view/menu/tq1$a;


# instance fields
.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/appcompat/view/menu/tq1$a;

    const-string v1, "UNKNOWN_MATCH_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/appcompat/view/menu/tq1$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/appcompat/view/menu/tq1$a;->n:Landroidx/appcompat/view/menu/tq1$a;

    new-instance v1, Landroidx/appcompat/view/menu/tq1$a;

    const-string v2, "REGEXP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Landroidx/appcompat/view/menu/tq1$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/appcompat/view/menu/tq1$a;->o:Landroidx/appcompat/view/menu/tq1$a;

    new-instance v2, Landroidx/appcompat/view/menu/tq1$a;

    const-string v3, "BEGINS_WITH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Landroidx/appcompat/view/menu/tq1$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroidx/appcompat/view/menu/tq1$a;->p:Landroidx/appcompat/view/menu/tq1$a;

    new-instance v3, Landroidx/appcompat/view/menu/tq1$a;

    const-string v4, "ENDS_WITH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Landroidx/appcompat/view/menu/tq1$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/appcompat/view/menu/tq1$a;->q:Landroidx/appcompat/view/menu/tq1$a;

    new-instance v4, Landroidx/appcompat/view/menu/tq1$a;

    const-string v5, "PARTIAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Landroidx/appcompat/view/menu/tq1$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroidx/appcompat/view/menu/tq1$a;->r:Landroidx/appcompat/view/menu/tq1$a;

    new-instance v5, Landroidx/appcompat/view/menu/tq1$a;

    const-string v6, "EXACT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Landroidx/appcompat/view/menu/tq1$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroidx/appcompat/view/menu/tq1$a;->s:Landroidx/appcompat/view/menu/tq1$a;

    new-instance v6, Landroidx/appcompat/view/menu/tq1$a;

    const-string v7, "IN_LIST"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Landroidx/appcompat/view/menu/tq1$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroidx/appcompat/view/menu/tq1$a;->t:Landroidx/appcompat/view/menu/tq1$a;

    filled-new-array/range {v0 .. v6}, [Landroidx/appcompat/view/menu/tq1$a;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/tq1$a;->v:[Landroidx/appcompat/view/menu/tq1$a;

    new-instance v0, Landroidx/appcompat/view/menu/lr1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/lr1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/tq1$a;->u:Landroidx/appcompat/view/menu/f12;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/appcompat/view/menu/tq1$a;->m:I

    return-void
.end method

.method public static c(I)Landroidx/appcompat/view/menu/tq1$a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Landroidx/appcompat/view/menu/tq1$a;->t:Landroidx/appcompat/view/menu/tq1$a;

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/appcompat/view/menu/tq1$a;->s:Landroidx/appcompat/view/menu/tq1$a;

    return-object p0

    :pswitch_2
    sget-object p0, Landroidx/appcompat/view/menu/tq1$a;->r:Landroidx/appcompat/view/menu/tq1$a;

    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/appcompat/view/menu/tq1$a;->q:Landroidx/appcompat/view/menu/tq1$a;

    return-object p0

    :pswitch_4
    sget-object p0, Landroidx/appcompat/view/menu/tq1$a;->p:Landroidx/appcompat/view/menu/tq1$a;

    return-object p0

    :pswitch_5
    sget-object p0, Landroidx/appcompat/view/menu/tq1$a;->o:Landroidx/appcompat/view/menu/tq1$a;

    return-object p0

    :pswitch_6
    sget-object p0, Landroidx/appcompat/view/menu/tq1$a;->n:Landroidx/appcompat/view/menu/tq1$a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e()Landroidx/appcompat/view/menu/l12;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ar1;->a:Landroidx/appcompat/view/menu/l12;

    return-object v0
.end method

.method public static values()[Landroidx/appcompat/view/menu/tq1$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/tq1$a;->v:[Landroidx/appcompat/view/menu/tq1$a;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/tq1$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/tq1$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/tq1$a;->m:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroidx/appcompat/view/menu/tq1$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/tq1$a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
