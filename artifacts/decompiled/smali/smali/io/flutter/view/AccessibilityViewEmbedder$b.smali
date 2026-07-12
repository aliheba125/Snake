.class public Lio/flutter/view/AccessibilityViewEmbedder$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityViewEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Field;

.field public final f:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 10

    const-string v0, "getSourceNodeId"

    const-class v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v2, "AccessibilityBridge"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v3, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "can\'t invoke AccessibilityNodeInfo#getSourceNodeId with reflection"

    .line 4
    invoke-static {v2, v5}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    :goto_0
    :try_start_1
    const-class v6, Landroid/view/accessibility/AccessibilityRecord;

    new-array v7, v3, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "can\'t invoke AccessibiiltyRecord#getSourceNodeId with reflection"

    .line 6
    invoke-static {v2, v0}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    :goto_1
    :try_start_2
    const-string v6, "mChildNodeIds"

    .line 7
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v6, 0x1

    .line 8
    invoke-virtual {v1, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v7, "android.util.LongArray"

    .line 9
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "get"

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v3

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v1, "can\'t access childNodeIdsField with reflection"

    .line 10
    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    move-object v2, v1

    :goto_2
    iput-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->c:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->d:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->e:Ljava/lang/reflect/Field;

    iput-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method public synthetic constructor <init>(Lio/flutter/view/AccessibilityViewEmbedder$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->i(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(J)I
    .locals 0

    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->j(J)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->g(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/flutter/view/AccessibilityViewEmbedder$b;->f(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->h(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static j(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static k(JI)Z
    .locals 2

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 4

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->k(JI)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    :cond_0
    const/4 p0, 0x1

    invoke-static {v2, v3, p0}, Lio/flutter/view/AccessibilityViewEmbedder$b;->k(JI)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    :cond_1
    const/4 p0, 0x2

    invoke-static {v2, v3, p0}, Lio/flutter/view/AccessibilityViewEmbedder$b;->k(JI)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    :cond_2
    const/4 p0, 0x3

    invoke-static {v2, v3, p0}, Lio/flutter/view/AccessibilityViewEmbedder$b;->k(JI)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public final f(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 6

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->e:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->f:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "AccessibilityBridge"

    if-eqz v0, :cond_2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string p2, "The getChildId method threw an exception when invoked."

    invoke-static {v4, p2, p1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_1
    const-string p2, "Failed to access getChildId method."

    invoke-static {v4, p2, p1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->f:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_3

    :goto_2
    const-string p2, "The longArrayGetIndex method threw an exception when invoked."

    invoke-static {v4, p2, p1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    const-string p2, "Failed to access longArrayGetIndex method or the childNodeId field."

    invoke-static {v4, p2, p1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object v1
.end method

.method public final g(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 3

    const-string v0, "AccessibilityBridge"

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    const-string v2, "The getParentNodeId method threw an exception when invoked."

    invoke-static {v0, v2, v1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v2, "Failed to access getParentNodeId method."

    invoke-static {v0, v2, v1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    invoke-static {p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->l(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 4

    const-string v0, "AccessibilityBridge"

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string v1, "The getRecordSourceNodeId method threw an exception when invoked."

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v1, "Failed to access the getRecordSourceNodeId method."

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v2
.end method

.method public final i(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 4

    const-string v0, "AccessibilityBridge"

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string v1, "The getSourceNodeId method threw an exception when invoked."

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v1, "Failed to access getSourceNodeId method."

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/ea0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v2
.end method
