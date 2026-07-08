.class public final Landroidx/appcompat/view/menu/xj;
.super Landroidx/appcompat/view/menu/vr0;
.source "SourceFile"


# static fields
.field public static final u:Landroidx/appcompat/view/menu/xj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/xj;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/xj;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/xj;->u:Landroidx/appcompat/view/menu/xj;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget v1, Landroidx/appcompat/view/menu/kz0;->c:I

    sget v2, Landroidx/appcompat/view/menu/kz0;->d:I

    sget-wide v3, Landroidx/appcompat/view/menu/kz0;->e:J

    sget-object v5, Landroidx/appcompat/view/menu/kz0;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/vr0;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
